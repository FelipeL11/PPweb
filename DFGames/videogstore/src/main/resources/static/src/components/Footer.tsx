import React from 'react';
import { Facebook, Twitter, Instagram, MapPin, Phone, Mail, Clock } from 'lucide-react';

const Footer: React.FC = () => {
  return (
    <footer className="bg-gray-800 text-white py-8">
      <div className="container mx-auto px-4">
        <div className="flex flex-wrap justify-between">
          <div className="w-full md:w-1/3 mb-6 md:mb-0">
            <h3 className="text-xl font-bold mb-4">DFGAMES STORE</h3>
            <ul className="space-y-3">
              <li className="flex items-center gap-2 text-gray-400">
                <MapPin size={18} className="flex-shrink-0" />
                <span>123 Gaming Street, Digital City, DC 12345</span>
              </li>
              <li className="flex items-center gap-2 text-gray-400">
                <Phone size={18} className="flex-shrink-0" />
                <span>+1 (555) 123-4567</span>
              </li>
              <li className="flex items-center gap-2 text-gray-400">
                <Mail size={18} className="flex-shrink-0" />
                <span>contact@dfgames.com</span>
              </li>
              <li className="flex items-center gap-2 text-gray-400">
                <Clock size={18} className="flex-shrink-0" />
                <span>Mon-Sat: 9:00 AM - 8:00 PM</span>
              </li>
            </ul>
          </div>
          <div className="w-full md:w-1/3 mb-6 md:mb-0">
            <h4 className="text-lg font-semibold mb-4">QUICK LINKS</h4>
            <ul className="space-y-2">
              <li><a href="#" className="text-gray-400 hover:text-white transition-colors">About Us</a></li>
              <li><a href="#" className="text-gray-400 hover:text-white transition-colors">Contact</a></li>
              <li><a href="#" className="text-gray-400 hover:text-white transition-colors">FAQ</a></li>
              <li><a href="#" className="text-gray-400 hover:text-white transition-colors">Privacy Policy</a></li>
            </ul>
          </div>
          <div className="w-full md:w-1/3">
            <h4 className="text-lg font-semibold mb-4">CONNECT WITH US</h4>
            <div className="flex flex-col space-y-3">
              <a href="#" className="flex items-center gap-2 text-gray-400 hover:text-white transition-colors">
                <Facebook size={20} />
                <span>Facebook</span>
              </a>
              <a href="#" className="flex items-center gap-2 text-gray-400 hover:text-white transition-colors">
                <Twitter size={20} />
                <span>Twitter</span>
              </a>
              <a href="#" className="flex items-center gap-2 text-gray-400 hover:text-white transition-colors">
                <Instagram size={20} />
                <span>Instagram</span>
              </a>
            </div>
          </div>
        </div>
        <div className="mt-8 pt-6 text-center text-gray-400 border-t border-gray-700">
          <p>&copy; 2024 DFGAMES. All rights reserved.</p>
        </div>
      </div>
    </footer>
  );
};

export default Footer;