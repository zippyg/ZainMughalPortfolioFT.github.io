#!/bin/bash

# Initialize the project
npx create-react-app my-portfolio
cd my-portfolio

# Install dependencies
npm install react-spring

# Create directories
mkdir -p src/assets src/components src/pages

# Create Header component
cat <<EOL > src/components/Header.js
import React from 'react';
import { Link } from 'react-router-dom';
import './Header.css';

const Header = () => (
  <header>
    <nav>
      <ul>
        <li><strong>Zain Mughal's Portfolio</strong></li>
        <li><Link to="/">Home</Link></li>
        <li><Link to="/cv">CV</Link></li>
        <li><Link to="/projects">Projects</Link></li>
        <li><Link to="/contact">Contact</Link></li>
      </ul>
    </nav>
  </header>
);

export default Header;
EOL

# Create Footer component
cat <<EOL > src/components/Footer.js
import React from 'react';
import './Footer.css';

const Footer = () => (
  <footer>
    <small>
      <a href="/privacy">Privacy Policy</a> • <a href="/terms">Terms of Service</a>
    </small>
  </footer>
);

export default Footer;
EOL

# Create ProjectCard component
cat <<EOL > src/components/ProjectCard.js
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
EOL

# Create AnimatedSection component
cat <<EOL > src/components/AnimatedSection.js
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
EOL

# Create Home page
cat <<EOL > src/pages/Home.js
import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import AnimatedSection from '../components/AnimatedSection';
import './Home.css';

const Home = () => (
  <div>
    <Header />
    <main>
      <AnimatedSection>
        <section id="about">
          <h2>About Me</h2>
          <h3>Imperial College London second year student</h3>
          <p>
            I am a second-year student at Imperial College London with a keen interest in data science, technology, and finance.
            I have a proven track record gained through numerous rigorous projects and active participation in the Imperial Finance Society.
            I possess advanced analytical and programming skills, including proficiency in Python and expertise in VBA, complemented by machine learning implementations.
            I am a versatile candidate eager to leverage quantitative skills and technological expertise to excel in consulting,
            enhancing client solutions and facilitating informed, strategic decision-making.
          </p>
        </section>
      </AnimatedSection>
    </main>
    <Footer />
  </div>
);

export default Home;
EOL

# Create CV page
cat <<EOL > src/pages/CV.js
import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import './CV.css';

const CV = () => (
  <div>
    <Header />
    <main>
      <section id="cv">
        <h2>Curriculum Vitae</h2>
        <h3>My professional background</h3>
        <embed src="/portfolio resources/Zain Mughal NP CV - MSci .pdf" className="pdf-embed" />
      </section>
    </main>
    <Footer />
  </div>
);

export default CV;
EOL

# Create Projects page
cat <<EOL > src/pages/Projects.js
import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import ProjectCard from '../components/ProjectCard';
import './Projects.css';

const Projects = () => (
  <div>
    <Header />
    <main>
      <section id="projects">
        <h2>My Projects</h2>
        <ProjectCard title="Project 1" description="Description of Project 1" link="https://example.com" />
        <ProjectCard title="Project 2" description="Description of Project 2" link="https://example.com" />
        {/* Add more ProjectCards as needed */}
      </section>
    </main>
    <Footer />
  </div>
);

export default Projects;
EOL

# Create Contact page
cat <<EOL > src/pages/Contact.js
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
          <li><strong>LinkedIn:</strong> <a href="https://www.linkedin.com/in/zain-mughal-b770041a4/" target="_blank">linkedin.com/in/zain-mughal-b770041a4</a></li>
        </ul>
      </section>
    </main>
    <Footer />
  </div>
);

export default Contact;
EOL

# Create Privacy page
cat <<EOL > src/pages/Privacy.js
import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import './Privacy.css';

const Privacy = () => (
  <div>
    <Header />
    <main>
      <section id="privacy">
        <h2>Privacy Policy</h2>
        <h3>Our commitment to your privacy</h3>
        <p>Your privacy is important to us. This privacy policy explains how we collect, use, and protect your personal information.</p>
        <h3>Information We Collect</h3>
        <p>We collect information that you provide directly to us, such as when you create an account, update your profile, use the interactive features of our services, participate in a survey, contest, promotion, sweepstakes, activity or event, make a purchase, request customer support, or otherwise communicate with us.</p>
        <h3>How We Use Information</h3>
        <p>We use the information we collect to provide, maintain, and improve our services, such as to administer your account, process transactions, send you related information, including purchase confirmations and invoices, provide customer service, respond to your comments, questions, and requests, and send you technical notices, updates, security alerts, and support and administrative messages.</p>
        <h3>Sharing of Information</h3>
        <p>We do not share your personal information with third parties without your consent, except to comply with the law, protect our rights, or provide you with requested services. We may share information with vendors, consultants, and other service providers who need access to such information to carry out work on our behalf.</p>
        <h3>Security</h3>
        <p>We take reasonable measures to help protect your personal information from loss, theft, misuse, and unauthorized access, disclosure, alteration, and destruction.</p>
        <h3>Changes to This Policy</h3>
        <p>We may update this privacy policy from time to time. If we make changes, we will notify you by revising the date at the top of the policy and, in some cases, we may provide you with additional notice (such as adding a statement to our homepage or sending you a notification).</p>
        <h3>Contact Us</h3>
        <p>If you have any questions about this privacy policy, please contact us at <a href="mailto:zzm22@ic.ac.uk">zzm22@ic.ac.uk</a>.</p>
      </section>
    </main>
    <Footer />
  </div>
);

export default Privacy;
EOL

# Create Terms page
cat <<EOL > src/pages/Terms.js
import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import './Terms.css';

const Terms = () => (
  <div>
    <Header />
    <main>
      <section id="terms">
        <h2>Terms of Service</h2>
        <h3>Our agreement with you</h3>
        <p>These terms and conditions outline the rules and regulations for the use of Zain Mughal's Portfolio's Website, located at <a href="https://yourusername.github.io/yourrepositoryname">Zain Mughal's Portfolio</a>.</p>
        <h3>1. Terms</h3>
        <p>By accessing this website, we assume you accept these terms and conditions. Do not continue to use Zain Mughal's Portfolio if you do not agree to take all of the terms and conditions stated on this page.</p>
        <h3>2. Use License</h3>
        <p>Permission is granted to temporarily download one copy of the materials (information or software) on Zain Mughal's Portfolio's website for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license, you may not:</p>
        <ul>
          <li>Modify or copy the materials</li>
          <li>Use the materials for any commercial purpose, or for any public display (commercial or non-commercial)</li>
          <li>Attempt to decompile or reverse engineer any software contained on Zain Mughal's Portfolio's website</li>
          <li>Remove any copyright or other proprietary notations from the materials</li>
          <li>Transfer the materials to another person or "mirror" the materials on any other server</li>
        </ul>
        <p>This license shall automatically terminate if you violate any of these restrictions and may be terminated by Zain Mughal's Portfolio at any time. Upon terminating your viewing of these materials or upon the termination of this license, you must destroy any downloaded materials in your possession whether in electronic or printed format.</p>
        <h3>3. Disclaimer</h3>
        <p>The materials on Zain Mughal's Portfolio's website are provided on an 'as is' basis. Zain Mughal's Portfolio makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties including, without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights.</p>
        <h3>4. Limitations</h3>
        <p>In no event shall Zain Mughal's Portfolio or its suppliers be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption) arising out of the use or inability to use the materials on Zain Mughal's Portfolio's website, even if Zain Mughal's Portfolio or a Zain Mughal's Portfolio authorized representative has been notified orally or in writing of the possibility of such damage.</p>
        <h3>5. Accuracy of materials</h3>
        <p>The materials appearing on Zain Mughal's Portfolio's website could include technical, typographical, or photographic errors. Zain Mughal's Portfolio does not warrant that any of the materials on its website are accurate, complete or current. Zain Mughal's Portfolio may make changes to the materials contained on its website at any time without notice. However, Zain Mughal's Portfolio does not make any commitment to update the materials.</p>
        <h3>6. Links</h3>
        <p>Zain Mughal's Portfolio has not reviewed all of the sites linked to its website and is not responsible for the contents of any such linked site. The inclusion of any link does not imply endorsement by Zain Mughal's Portfolio of the site. Use of any such linked website is at the user's own risk.</p>
        <h3>7. Modifications</h3>
        <p>Zain Mughal's Portfolio may revise these terms of service for its website at any time without notice. By using this website you are agreeing to be bound by the then current version of these terms of service.</p>
        <h3>8. Governing Law</h3>
        <p>These terms and conditions are governed by and construed in accordance with the laws of London and you irrevocably submit to the exclusive jurisdiction of the courts in that State or location.</p>
      </section>
    </main>
    <Footer />
  </div>
);

export default Terms;
EOL

# Create App.js
cat <<EOL > src/App.js
import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Home from './pages/Home';
import CV from './pages/CV';
import Projects from './pages/Projects';
import Contact from './pages/Contact';
import Privacy from './pages/Privacy';
import Terms from './pages/Terms';
import './App.css';

const App = () => (
  <Router>
    <Switch>
      <Route exact path="/" component={Home} />
      <Route path="/cv" component={CV} />
      <Route path="/projects" component={Projects} />
      <Route path="/contact" component={Contact} />
      <Route path="/privacy" component={Privacy} />
      <Route path="/terms" component={Terms} />
    </Switch>
  </Router>
);

export default App;
EOL

# Create App.css
cat <<EOL > src/App.css
body {
  font-family: 'Arial', sans-serif;
  line-height: 1.6;
  background-color: #121212;
  color: #e0e0e0;
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  margin: 0;
}

header, footer {
  background-color: #003E74; /* Imperial College blue */
  color: #e0e0e0;
  padding: 10px;
}

header ul, footer ul {
  display: flex;
  justify-content: space-around;
  list-style: none;
  padding: 0;
}

header ul li, footer ul li {
  margin: 0 10px;
}

header ul li a, footer ul li a {
  color: #e0e0e0;
  text-decoration: none;
}

main {
  flex: 1;
  max-width: 960px;
  margin: 20px auto;
  padding: 20px;
  background-color: #1E1E1E;
  border-radius: 5px;
}

.project-card {
  background-color: #2E2E2E;
  padding: 20px;
  border: 1px solid #003E74;
  border-radius: 5px;
  margin-bottom: 20px;
  text-align: center;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.project-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
EOL

# Create index.js
cat <<EOL > src/index.js
import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);
EOL

# Create index.css
cat <<EOL > src/index.css
body {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
EOL

# Notify user
echo "Project setup complete! Navigate to 'my-portfolio' directory and start the development server with 'npm start'."

