'use strict';
const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    this.ctx.body = 'hi, egg ' + process.pid + '\n';
  }
}

module.exports = HomeController;
