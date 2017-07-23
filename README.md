# Jekyll writing on Docker

1. After cloning this repository
2. run `copy-me` with the destination where you want to write, i.e.
   ```
   . copy-me ~/my-blog
   ```
   **NOTE**: For some reason the `.` is needed to change the directory
3. `docker-compose build`
4. `dweb bundle`
   **NOTE**: `dweb` is alias for `docker-compose run --rm web`
5. We will need to force Jekyll to create new blog and overwrite some files of ours
   ```
   dweb bundle exec jekyll new --force .
   ```
6. In `_config.yml` exlude the docker files
   ```
   exclude:
     - Dockerfile
     - docker-compose.yml
   ```
