import Component from '@glimmer/component';

export default class PrRowComponent extends Component {
  get repo() {
    // repository_url: https://api.github.com/repos/ember-learn/ember-blog
    let split = this.args.pr.repository_url.split('/');
    return split[split.length - 1];
  }
}

<tr data-test-github-pr>
  <td><a href={{@pr.pull_request.html_url}}>{{@pr.title}}</a></td>
  <td>{{this.repo}}</td>
  <td>{{luxon-date-formatter @pr.created_at}}</td>
  <td>{{luxon-date-formatter @pr.updated_at}}</td>
</tr>