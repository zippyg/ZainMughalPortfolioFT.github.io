import React from 'react';
import { useSpring, animated } from 'react-spring';

const AnimatedSection = ({ children }) => {
  const props = useSpring({
    from: { opacity: 0, transform: 'translate3d(0,40px,0)' },
    to: { opacity: 1, transform: 'translate3d(0,0,0)' },
  });

  return <animated.section style={props}>{children}</animated.section>;
};

export default AnimatedSection;
