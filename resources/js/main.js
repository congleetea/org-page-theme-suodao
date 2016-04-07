$(document).ready(function() {
  $('pre').each(function(i, block) {
    var self = $(this);
    self.removeAttr('class');
    self.html('<code>' + self.html() + '</code>');
    hljs.highlightBlock(block);
  });
});
