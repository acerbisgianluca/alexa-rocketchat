# alexa-rocketchat
Innovating incredible new user experiences in the Alexa ecosystem - powered by Rocket.Chat

# Let's Get Started

**Note:** The rest of this readme assumes you have your developer environment ready to go and that you have some familiarity with CLI (Command Line Interface) Tools, [AWS](https://aws.amazon.com/), and the [ASK Developer Portal](https://developer.amazon.com/alexa-skills-kit).

### Repository Contents
* `/.ask`	- [ASK CLI (Command Line Interface) Configuration](https://developer.amazon.com/docs/smapi/ask-cli-intro.html)	 
* `/lambda/custom` - Back-End Logic for the Alexa Skill hosted on [AWS Lambda](https://aws.amazon.com/lambda/)
* `/models` - Voice User Interface and Language Specific Interaction Models
* `skill.json`	- [Skill Manifest](https://developer.amazon.com/docs/smapi/skill-manifest.html)


## Setup w/ ASK CLI

### Pre-requisites

* Node.js (> v8.10)
* Register for an [AWS Account](https://aws.amazon.com/)
* Register for an [Amazon Developer Account](https://developer.amazon.com/)
* Install and Setup [ASK CLI](https://developer.amazon.com/docs/smapi/quick-start-alexa-skills-kit-command-line-interface.html)


### Installation
1. Clone the repository.

	```bash
	$ git clone https://github.com/RocketChat/alexa-rocketchat.git
	```

2. Navigating into the repository's root folder.

	```bash
	$ cd alexa-rocketchat
	```

3. Install npm dependencies by navigating into the `lambda/custom` directory and running the npm command: `npm install`

	```bash
	$ cd lambda/custom
	$ npm install

4. Make Sure to fill out the User Credentials section with your own credentials in `/lambda/custom/index.js` before deployment.
	
	
### Deployment

ASK CLI will create the skill and the lambda function for you. The Lambda function will be created in ```us-east-1 (Northern Virginia)``` by default.

1. Deploy the skill and the lambda function in one step by running the following command:

	```bash
	$ ask deploy
	
2. After Deploying goto lambda console and set Environment variables values.
	
	e.g: SERVER_URL https://yourservername.rocket.chat
		 USERNAME
		 PASSWORD
		 AUTH_TOKEN
		 USER_ID
	
	You can generate your AUTH_TOKEN and USER_ID here - https://yourservername.rocket.chat/account/tokens
	
	
### Testing

1. To test, you need to login to Alexa Developer Console, and enable the "Test" switch on your skill from the "Test" Tab.

2. Once the "Test" switch is enabled, your skill can be tested in the Alexa skill simulator or on devices associated with the developer account as well. Speak to Alexa from any enabled device, from your browser at [echosim.io](https://echosim.io/welcome), or through your Amazon Mobile App and say :

	```text
	Alexa, start rocket chat
	```
	
	
## Customization

1. ```./skill.json```

   Change the skill name, example phrase, icons, testing instructions etc ...

   See the Skill [Manifest Documentation](https://developer.amazon.com/docs/smapi/skill-manifest.html) for more information.

2. ```./lambda/custom/index.js```

   Modify messages, and other strings from the source code to customize the skill.

3. ```./models/*.json```

	Change the model definition to replace the invocation name and, if necessary for your customization, the sample phrases for each intent.  Repeat the operation for each locale you are planning to support.


## Documentation To Refer

1. ```Rocket.Chat API Documentation```
        
    The REST API allows you to control and extend Rocket.Chat with ease - [REST API Documentation]( https://rocket.chat/docs/developer-guides/rest-api/ )

2. ```Axios Documentation```

    Promise based HTTP client for the browser and node.js - [Github Page](https://github.com/axios/axios )
    
3. ```Slot Type Reference```

    The Alexa Skills Kit supports several slot types that define how data in the slot is recognized and handled - [Official Documentation ](https://developer.amazon.com/docs/custom-skills/slot-type-reference.html )
    
## Intent Structure

1. Keep sample utterance minimal.
2. Make sure you have included the values that are required to send to the API as slots in the sample utterance.
3. Use only custom slots and include real examples from Rocket.chat for Natural language training.
4. Include as many slot values as you can. More the merrier.

## A Little Help

We are facing some difficulties with the account linking process for Alexa and Rocket.Chat and we would very much like for you to help us with that. So here's the problem:

* Alexa only allows an OAuth 2.0 authorization support that means when a user access the skill Alexa only returns an OAuth Token to Rocket.Chat server.

* While for a successfull request Rocket.Chat API requires email,password,AUTH_TOKEN and UserID to return data.

We are working constantly to solve this problem yet we would like if you can suggest some ideas regarding this topic and help us with the account linking process. One of the potential idea is making a custom Auth0 API for carrying out this process. Feel free to join the discussion on [Rocket.Chat Alexa Discussion](https://open.rocket.chat/group/R7TSbpAS7eWb2NDFg)