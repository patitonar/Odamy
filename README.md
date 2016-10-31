 > With Odamy you can create and sell your own courses. It's like Udamy but open source. 

![](http://i.imgur.com/TwvVPyd.png)


##Features

**Stripe:**

You can set your own price for every courses that's created. 

![](http://i.imgur.com/FJc4Whb.png?1)

**Wistia:** 

We are using the Wistia API to manage our content. All you have to do is pull out the last digits on the URL from your video. 

Ejample: https://setih.wistia.com/medias/pz88xvd5uk


Add **pz88xvd5uk** when creating a course intro or lesson. 


![](http://i.imgur.com/EElmXzU.png?1)

**Markdown:** 

We also love markdown. So to create those lessons notes we are using github-markdown. And that also means that you can add emojis. 


**Materialize Design:** 

You can customize the design. We are using [Materialize css](http://materializecss.com/). Its pretty nice.   


**Autenticación:** 

We currently support authenticación with Devise. And for email support and sending receipts we are using Mandril. 

**Note:** We will soon make an upgrade to sendgrid. 

![](http://i.imgur.com/BCH66zr.png)

**Admin Interface:**

For our admin interface we are using ActiveAdmin. You can easily manage every course and every lesson using sortable tree. 

![](http://i.imgur.com/Kd8qjfA.png)


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
