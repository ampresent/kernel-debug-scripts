# 基于当前系统的 config 来编一个内核
cp /boot/config-$(uname -r) .config
make olddefconfig
make localmodconfig
make -j 
make module -j 
make modules_install -j
make install -j
