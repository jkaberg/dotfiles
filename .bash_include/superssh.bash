superssh () {
    /usr/bin/rsync -avqr --files-from=/home/$USER/.bash_include/ssh_sync_files ~ $1:~/
    /usr/bin/ssh $1
}
