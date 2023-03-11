# Project-Website-for-security-analysis

## Description

The website that we will be implemeting has a landing page similar to the one of virustotal. It offers the possibility to upload a file or a post link. The input will then be checked from a security perspective and a result will be presented (whether the website or file is malicious or not). Alternatively, the database can be queried if it contains information regarding a file or a URL.

### The website is comprised of 3 major components:

<ul>
  <li> <b> The frontend </b> which is essentially the user facing interface, the actual website. When a specific action is taken (for example, a button is pressed), the frontend intercepts the action and sends a request to the middleware.</li>
  <li> <b> The middleware </b> receives raw requests from the frontend and transforms them into calls to functions that are implemented in the backend.</li>
  <li> <b> The backend </b> does the actual heavy lifting in terms of implementing the logic: it stores information in a database and computes whatever values are requested.</li>
</ul>

Each of the above components will have to be implemented for each of the 3 milestones of the projects.

## Project Requirements (3 milestones)

[Project](https://dlang-upb.github.io/PCLP4/project/intro.html)
