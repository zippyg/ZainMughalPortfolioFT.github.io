import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import './Contact.css';

const Contact = () => (
  <div>
    <Header />
    <main>
      <section id="contact">
        <h2>Contact Me</h2>
        <h3>Get in touch</h3>
        <p>You can reach me through the following contact details:</p>
        <ul>
          <li><strong>Institutional Email:</strong> <a href="mailto:zzm22@ic.ac.uk">zzm22@ic.ac.uk</a></li>
          <li><strong>Personal Email:</strong> <a href="mailto:zainmughal77@outlook.com">zainmughal77@outlook.com</a></li>
          <li><strong>Phone:</strong> +44 07810101334</li>
          <li><strong>LinkedIn:</strong> <a href="https://www.linkedin.com/in/zain-mughal-b770041a4/" target="_blank" rel="noopener noreferrer">linkedin.com/in/zain-mughal-b770041a4</a></li>
        </ul>
      </section>
    </main>
    <Footer />
  </div>
);

export default Contact;
