sudo dnf install gcc rpm-build rpm-devel rpmlint make python bash coreutils diffutils patch rpmdevtools
rpmdev-setuptree
mkdir getmac-$0
mkdir getmac-$0/docs
mkdir getmac-$0/docs/man
cp -rt getmac-$0 getmac setup.py README.md LICENSE
cp docs/man/getmac.1 getmac-$0/docs/man
tar czf getmac-$0.tar.gz getmac-$0
mv getmac-$0.tar.gz ~/rpmbuild/SOURCES/
cp python2-getmac.spec ~/rpmbuild/SPECS/
rm -rf getmac-$0
cd ~/rpmbuild/SPECS/
rpmbuild -bs python2-getmac.spec
rpmbuild -bb python2-getmac.spec
