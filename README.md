 > With Odamy you can create and sell your own courses. It's like Udamy but open source. 

<img src="https://camo.githubusercontent.com/fc9b2baa17a25296539edf26efe920652054a99e/687474703a2f2f692e696d6775722e636f6d2f547776565079642e706e67" alt="" data-canonical-src="https://i.imgur.com/TwvVPyd.png" style="max-width:100%;box-shadow: 0 15px 35px rgba(50, 50, 93, 0.1), 0 5px 15px rgba(0, 0, 0, 0.07);">


##Features

**Stripe:**

You can set your own price for every courses that's created. 

![](https://i.imgur.com/FJc4Whb.png?1)

**Wistia:** 

We are using the Wistia API to manage our content. All you have to do is pull out the last digits on the URL from your video. 

Ejample: https://setih.wistia.com/medias/pz88xvd5uk


Add **pz88xvd5uk** when creating a course intro or lesson. 


![](https://i.imgur.com/EElmXzU.png?1)

**Markdown:** 

We also love markdown. So to create those lessons notes we are using github-markdown. And that also means that you can add emojis. 


**Materialize Design:** 

You can customize the design. We are using [Materialize css](http://materializecss.com/). Its pretty nice.   


**Autenticación:** 

We currently support authenticación with Devise. And for email support and sending receipts we are using Mandril. 

**Note:** We will soon make an upgrade to sendgrid. 

![](https://i.imgur.com/BCH66zr.png)

**Admin Interface:**

For our admin interface we are using ActiveAdmin. You can easily manage every course and every lesson using sortable tree. 

![](https://i.imgur.com/Kd8qjfA.png)


## Installing 


Fork or download the repo. 


**We are using:** 


- Rails 4.2.0
- Ruby 2.3.0
- Sqlite3 3.15.0 


## Variables


You need to change these variables, using your keys: 


- STRIPE_SECRET_KEY: ''
- STRIPE_PUBLIC_KEY: ''
- MAILER_API_KEY: ''


## Deployment

Pending todo. Create a tutorial to upload to AWS or Heroku. 
