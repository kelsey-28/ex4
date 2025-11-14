
C:\Users\HP>cd C:\Users\HP\OneDrive\Documents\ex4

C:\Users\HP\OneDrive\Documents\ex4>python app.py
Hello from Python CI Lab!
2 + 3 = 5

C:\Users\HP\OneDrive\Documents\ex4>pytest -q
'pytest' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\HP\OneDrive\Documents\ex4>docker build -t yourname/python-ci-lab:local .
'docker' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\HP\OneDrive\Documents\ex4>docker run --rm yourname/python-ci-lab:local
'docker' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\HP\OneDrive\Documents\ex4>git init
Initialized empty Git repository in C:/Users/HP/OneDrive/Documents/ex4/.git/

C:\Users\HP\OneDrive\Documents\ex4>git add .

C:\Users\HP\OneDrive\Documents\ex4>git commit -m "Initial commit"
[master (root-commit) 26c974b] Initial commit
 5 files changed, 23 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 Dockerfile
 create mode 100644 app.py
 create mode 100644 requirements.txt
 create mode 100644 tests/test_app.py

C:\Users\HP\OneDrive\Documents\ex4>git branch -M main

C:\Users\HP\OneDrive\Documents\ex4>git remote add origin https://github.com/kelsey-28/ex4.git

C:\Users\HP\OneDrive\Documents\ex4>git push -u origin main
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 4 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (8/8), 793 bytes | 79.00 KiB/s, done.
Total 8 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/kelsey-28/ex4.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.
Step 8: Configure GitHub Secrets

Go to your GitHub repository → Settings → Secrets and variables → Actions → New repository secret.

Create two secrets:

DOCKERHUB_USERNAME → your Docker Hub username

DOCKERHUB_TOKEN → your Docker Hub access token (generate in Docker Hub → Account Settings → Security → Access Tokens)

Step 9: Trigger Workflow

Push code to main branch or create a release tag:

git tag v1.0.0
git push origin v1.0.0


Go to Actions tab in GitHub to see the workflow running.

Confirm that tests passed, Docker image built, and pushed to Docker Hub.

Step 10: Verify on Docker Hub

Go to https://hub.docker.com/r/<your-username>/python-ci-lab.

You should see the latest image uploaded successfully.
