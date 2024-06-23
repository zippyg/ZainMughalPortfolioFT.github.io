import React from 'react';
import { motion } from 'framer-motion';
import './AnimatedSection.css';

const AnimatedSection = () => (
  <motion.div
    initial={{ opacity: 0 }}
    animate={{ opacity: 1 }}
    transition={{ duration: 1 }}
    className="animated-section"
  >
    <h2>Animated Section</h2>
    <p>This is an animated section using framer-motion.</p>
  </motion.div>
);

export default AnimatedSection;
