onmessage = function(args) {
  let functionJS = new Function(args);
  functionJS()
};

 