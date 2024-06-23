import React from 'react';
import { useSpring, animated } from 'react-spring';
import './ProjectCard.css';

const ProjectCard = ({ title, description, link }) => {
  const props = useSpring({
    from: { opacity: 0, transform: 'translate3d(0,-40px,0)' },
    to: { opacity: 1, transform: 'translate3d(0,0,0)' },
  });

  return (
    <animated.div style={props} className="project-card">
      <h3>{title}</h3>
      <p>{description}</p>
      <a href={link} target="_blank" rel="noopener noreferrer">View Project</a>
    </animated.div>
  );
};

export default ProjectCard;
