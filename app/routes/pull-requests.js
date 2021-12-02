import Route from '@ember/routing/route';
import fetch from 'fetch';
import ENV from 'ember-help-wanted/config/environment';

export default class PullRequestsRoute extends Route {
  model() {
    return fetch(ENV.API_HOST + 'api/pull-requests');
  }
}
