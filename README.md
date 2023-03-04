<a name="readme-top"></a>

<div align="center">

  <img src="murple_logo.png" alt="logo" width="140"  height="auto" />
  <br/>

  <h3><b>Blog project</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Blog project] <a name="about-project"></a>

> Build a Blog project ruby App to enable users to create posts, giving likes and writes comments.


**[Blog project]** is built using ruby on rails and following this ERD.
![image](https://user-images.githubusercontent.com/22921170/208265293-7149090e-faa0-4809-87eb-286b03d4b800.png)



## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> ruby, ruby on rails, rubocop linter, rspec testing

<!-- Features -->

### Key Features <a name="key-features"></a>

> Added unit tests for controllers and models using Rspec-rails library 
 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Future Features <a name="future-features"></a>

> Add group model to enable creating groups and make it look like a social website 
> Add more fancy styling  
 

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

In order to run this project you need:
## Windows users
Download the latest version of ruby using this [link](https://rubyinstaller.org/downloads/)
## Linux
coming soon
## Macos
coming soon

### Setup
You can download the page by clicking in the code green button and select Download ZIP or if you are a developer. You can get the https link or ssh link just copy it and use your favourite command line git interface and write this `git clone https://github.com/mohamed20163858/blog_project.git` if you use https or write `git clone git@github.com:mohamed20163858/blog_project.git` if you use ssh

### Usage

To run the project just open your terminal, then change the directory to the location of this repo using this command `cd file_path`, and finally run this command `gem install rails` then `rails s`.



<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Tests 
 in this project all tests are done using `Rspec` testing library this is done by including these libraries `rspec-rails` and `rails-controller-testing`  in the `Gemfile` under directory the root of this project 
 by including them under the group of development and testing like that : -
 ``` 
 group :development, :test do
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end
``` 
after that you need to run this command `bundle install` using terminal but you need to make sure you are under into the project destination to make it work. 

To run All tests just run this command in your terminal after navigating to your project folder `bundle exec rspec` and if you just need to be more specific to test portion of files just write `bundle exec rspec ./spec/{folder_name}` to test certain files in a specific folder or `bundle exec rspec ./spec/{folder_name}/{file_name}` to test the a specific file in a specific folder.

After you run your tests you should see something like that 
![image](https://user-images.githubusercontent.com/22921170/222914801-a0dae8fc-bb51-41d8-9f45-96d3dc272006.png)


and here is a list of things that are being tested :- 
- users and posts controller tests that includes 
  - If response status was correct.
  - If correct template was rendered.
  - response body includes correct placeholder text. 
- user, post, like, comment model tests that includes
  - some fields are not blank like name and title fields 
  - some fields have limit number of chars like title fields 
  - some database fields must be integers and initialized by zero like posts_counter, like_counters, and comments_counters



<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Mohamed Saleh**

- GitHub: [@mohamed20163858](https://github.com/mohamed20163858)
- Twitter: [@mohamed20163858](https://twitter.com/mohamed20163858)
- LinkedIn: [MohamedMohsenSaleh](https://www.linkedin.com/in/mohamedmohsensaleh/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project give it a thumb up :	👍 and share this projects with your friends 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.
<p align="right">(<a href="#readme-top">back to top</a>)</p>
