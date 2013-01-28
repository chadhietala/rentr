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
  var buffer = '', stack1, escapeExpression=this.escapeExpression;


  data.buffer.push("<div class=\"row\">\n  <div class=\"span12\">\n    <div class=\"signup\">\n      <h1>Stop Writing And Cashing Rent Checks</h1>\n      <h2 class=\"lead\">Rentr Is A Payment System For Independant Landlords and Tenants</h2>\n        ");
  stack1 = {};
  stack1['placeholder'] = "First Name";
  stack1['valueBinding'] = "firstName";
  stack1['name'] = "first_name";
  stack1['viewName'] = "firstNameField";
  stack1 = helpers.view.call(depth0, "Ember.TextField", {hash:stack1,contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n        ");
  stack1 = {};
  stack1['placeholder'] = "Last Name";
  stack1['valueBinding'] = "lastName";
  stack1['name'] = "last_name";
  stack1['viewName'] = "lastNameField";
  stack1 = helpers.view.call(depth0, "Ember.TextField", {hash:stack1,contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + "\n        <button ");
  stack1 = helpers.action.call(depth0, "create", {hash:{},contexts:[depth0],data:data});
  data.buffer.push(escapeExpression(stack1) + ">Say Hello</button>\n\n    </div>\n\n  </div>\n  \n</div>");
  return buffer;
});