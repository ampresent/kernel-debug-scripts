# 用 libvirt
`virt-customize -a test.img --root-password password:123456`
# 不用 libvirt
增加启动选项 `single rw init=/bin/bash`
