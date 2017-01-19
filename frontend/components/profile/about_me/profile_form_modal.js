export const style = {
  overlay : {
    position        : 'fixed',
    top             : 0,
    left            : 0,
    right           : 0,
    bottom          : 0,
    backgroundColor : 'rgba(255, 255, 255, 0.75)',
    zIndex          : 10
  },
  content : {
    position        : 'fixed',
    top             : '50%',
    left            : '50%',
    transform       : 'translate(-50%, -50%)',
    border          : '2px solid black',
    padding         : '30px',
    zIndex          : 11,
    width           : '350px',
    height          : '375px',
    backgroundColor : 'light-gray'
  }
};
