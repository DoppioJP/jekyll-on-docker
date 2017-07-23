# Jekyll writing on Docker

1. After cloning this repository
2. run `copy-me` with the destination where you want to write, i.e.
   ```
   . copy-me ~/my-blog
   ```
   **NOTE**: For some reason the `.` is needed to change the directory
3. `docker-compose build`
4. `dweb bundle`
5. `dweb bundle exec jekyll new my blog`
