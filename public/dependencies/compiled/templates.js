Ember.TEMPLATES["_mainNav"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  


  data.buffer.push("<div class=\"navbar navbar-inverse navbar-fixed-top\">\n  <div class=\"navbar-inner\">\n    <div class=\"container\">\n      <a class=\"btn btn-navbar\" data-toggle=\"collapse\" data-target=\".nav-collapse\">\n        <span class=\"icon-bar\"></span>\n        <span class=\"icon-bar\"></span>\n        <span class=\"icon-bar\"></span>\n      </a>\n      <a href=\"#\" class=\"brand\">Rentr</a>\n      <div class=\"nav-collapse\" id=\"main-menu\">\n        <ul class=\"nav pull-right\" id=\"main-menu-left\">\n          <li>\n            <a href=\"#\">Login</a>\n          </li>\n        </ul>\n      </div>\n    </div>\n  </div>\n</div>");
});

Ember.TEMPLATES["application"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', stack1, foundHelper, helperMissing=helpers.helperMissing, escapeExpression=this.escapeExpression;


  foundHelper = helpers.partial;
  stack1 = foundHelper ? foundHelper.call(depth0, "mainNav", {hash:{},contexts:[depth0],data:data}) : helperMissing.call(depth0, "partial", "mainNav", {hash:{},contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n<div class=\"container\">\n  ");
  stack1 = helpers._triageMustache.call(depth0, "outlet", {hash:{},contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n</div>\n\n");
  return buffer;
});

Ember.TEMPLATES["index"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', stack1, escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = '', stack1;
  data.buffer.push("\n              <label class=\"radio\">\n                ");
  stack1 = {};
  stack1['checked'] = "false";
  stack1['value'] = "landlord";
  stack1 = helpers.view.call(depth0, "RadioButton", {hash:stack1,contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n                Landlord\n              </label>\n              <label class=\"radio\">\n                ");
  stack1 = {};
  stack1['checked'] = "false";
  stack1['required'] = "true";
  stack1['value'] = "tenant";
  stack1 = helpers.view.call(depth0, "RadioButton", {hash:stack1,contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n                Tenant\n              </label>\n            ");
  return buffer;}

  data.buffer.push("<div class=\"row\">\n  <div class=\"span12\">\n    <div class=\"signup\">\n      <div class=\"headline\">\n        <h1>Stop Writing And Cashing Rent Checks</h1>\n\n        <h2 class=\"lead\">Rentr Is A Payment System For Independant Landlords and Tenants</h2>\n      </div>\n      <form class=\"form-horizontal offset3\">\n        <div class=\"control-group\">\n          <label class=\"control-label\" for=\"first_name\">First Name</label>\n          <div class=\"controls\">\n            ");
  stack1 = {};
  stack1['placeholder'] = "First Name";
  stack1['required'] = "true";
  stack1['valueBinding'] = "firstName";
  stack1['name'] = "first_name";
  stack1['viewName'] = "firstNameField";
  stack1 = helpers.view.call(depth0, "Ember.TextField", {hash:stack1,contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n          </div>\n        </div>\n        <div class=\"control-group\">\n          <label class=\"control-label\" for=\"last_name\">Last Name</label>\n          <div class=\"controls\">\n            ");
  stack1 = {};
  stack1['placeholder'] = "Last Name";
  stack1['required'] = "true";
  stack1['valueBinding'] = "lastName";
  stack1['name'] = "last_name";
  stack1['viewName'] = "lastNameField";
  stack1 = helpers.view.call(depth0, "Ember.TextField", {hash:stack1,contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n          </div>\n        </div>\n        <div class=\"control-group\">\n          <label class=\"control-label\" for=\"email\">Email</label>\n          <div class=\"controls\">\n            ");
  stack1 = {};
  stack1['placeholder'] = "Email";
  stack1['required'] = "true";
  stack1['type'] = "email";
  stack1['valueBinding'] = "email";
  stack1['name'] = "email";
  stack1['viewName'] = "emailField";
  stack1 = helpers.view.call(depth0, "Ember.TextField", {hash:stack1,contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n          </div>\n        </div>\n        <div class=\"control-group\">\n          <label class=\"control-label\" for=\"password\">Password</label>\n          <div class=\"controls\">\n            ");
  stack1 = {};
  stack1['placeholder'] = "Password";
  stack1['required'] = "true";
  stack1['type'] = "password";
  stack1['valueBinding'] = "password";
  stack1['name'] = "password";
  stack1['viewName'] = "passwordField";
  stack1 = helpers.view.call(depth0, "Ember.TextField", {hash:stack1,contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n          </div>\n        </div>\n        <div class=\"control-group\">\n          <label class=\"control-label\" for=\"\">Account Type</label>\n          <div class=\"controls\">\n            ");
  stack1 = {};
  stack1['name'] = "accountType";
  stack1['required'] = "true";
  stack1['valueBinding'] = "accountType";
  stack1 = helpers.view.call(depth0, "Ember.RadioButtonGroup", {hash:stack1,inverse:self.noop,fn:self.program(1, program1, data),contexts:[depth0],data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n          </div>\n\n        </div>\n        <div class=\"control-group\">\n          \n          <div class=\"controls\">\n            <input class=\"btn btn-primary\" ");
  stack1 = helpers.action.call(depth0, "create", {hash:{},contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + " type=\"submit\" value=\"Sign Up\">\n          </div>\n          \n        </div>\n      </form>\n\n    </div>\n\n  </div>\n  \n</div>");
  return buffer;
});