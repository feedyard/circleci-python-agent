from invoke import task
import re

@task
def buildlocal(ctx):
    ctx.run("docker build -t local/circleci-python-pkg-agent:latest .")

@task
def testlocal(ctx):
    ctx.run("bash testlocal.sh")

@task
def buildlatest(ctx):
    ctx.run("docker build -f Dockerfile.unpinned -t local/circleci-python-pkg-agent:latest .")

@task
def evalpackages(ctx):
    ctx.run("docker build -t local/circleci-python-pkg-agent:pinned . > result_log.pinned")
    ctx.run("docker build -f Dockerfile.unpinned -t local/circleci-python-pkg-agent:latest . > result_log.latest")
    ctx.run('docker rmi local/circleci-python-pkg-agent:pinned >> result_log.pinned')
    ctx.run('docker rmi local/circleci-python-pkg-agent:latest >> result_log.latest')
    with open('result_log.latest', 'rU') as f_latest:
        print('{0:20} {1:20} {2:20}'.format('PACKAGE', 'LATEST', 'PINNED'))
        for line_latest in f_latest:
            if ') Installing' in line_latest:
                pkg_pinned = re.search("Installing (.*)", line_latest).group(1)
                pkg_name_lastest = pkg_pinned.split()[0]
                pvg_version_latest = re.search(re.escape('(')+"(.*)"+re.escape(')'),pkg_pinned).group(1)
                pvg_version_pinned = 'not found'
                with open('result_log.pinned', 'rU') as f_pinned:
                    for line_pinned in f_pinned:
                        if ') Installing' in line_pinned:
                            pkg_installed = re.search("Installing (.*)", line_pinned).group(1)
                            pkg_name_pinned = pkg_installed.split()[0]
                            if pkg_name_pinned == pkg_name_lastest:
                                pvg_version_pinned = re.search(re.escape('(')+"(.*)"+re.escape(')'),pkg_installed).group(1)
                                break
                if pvg_version_latest != pvg_version_pinned:
                    print('{0:20} {1:20} \x1b[1;31;40m{2:20}\x1b[0m'.format(pkg_name_lastest, pvg_version_latest, pvg_version_pinned))
