var React = require('react')
  , ContainerMixin = require('./ContainerMixin');
var mui = require('material-ui');
var RaisedButton = mui.RaisedButton;
var FontIcon = mui.FontIcon;

var Container = React.createClass({
  displayName: 'Container',
  mixins: [ContainerMixin],
  render: function () {
    return (
      <div className="button-example-container">
        <RaisedButton linkButton={true} href="https://github.com/callemall/material-ui" secondary={true}>
          <FontIcon className="muidocs-icon-custom-github example-button-icon"/>
          <span className="mui-raised-button-label example-icon-button-label">Github</span>
        </RaisedButton>
      </div>
    );
  }

});

module.exports = Container;
