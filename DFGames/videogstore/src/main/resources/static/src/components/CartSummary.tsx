import React from 'react';
import { useCart } from '../context/CartContext';
import { X, CreditCard } from 'lucide-react';

interface CartSummaryProps {
  onClose: () => void;
}

const CartSummary: React.FC<CartSummaryProps> = ({ onClose }) => {
  const { cart, removeFromCart } = useCart();

  const total = cart.reduce((sum, item) => {
    const price = item.price === 'Free' ? 0 : parseFloat(item.price.replace('$', ''));
    return sum + price * item.quantity;
  }, 0);

  const handleCheckout = () => {
    // Implement payment logic here
    console.log('Processing payment...');
  };

  return (
    <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
      <div className="bg-gray-800 p-8 rounded-lg w-full max-w-md max-h-[80vh] overflow-y-auto relative">
        <div className="flex justify-between items-center mb-6">
          <h2 className="text-2xl font-bold text-blue-500">Cart Summary</h2>
          <button
            onClick={onClose}
            className="text-gray-400 hover:text-white transition-colors"
          >
            <X size={24} />
          </button>
        </div>

        {cart.length === 0 ? (
          <div className="text-center py-8">
            <p className="text-gray-400 text-lg">Your cart is empty</p>
          </div>
        ) : (
          <>
            <ul className="space-y-4 mb-6">
              {cart.map((item) => (
                <li
                  key={item.id}
                  className="flex items-center space-x-4 bg-gray-700/50 p-4 rounded-lg"
                >
                  <img
                    src={item.image}
                    alt={item.title}
                    className="w-16 h-16 object-cover rounded-lg"
                  />
                  <div className="flex-grow">
                    <h3 className="font-semibold text-white">{item.title}</h3>
                    <p className="text-gray-300">Quantity: {item.quantity}</p>
                    <p className="text-blue-400">{item.price}</p>
                  </div>
                  <button
                    onClick={() => removeFromCart(item.id)}
                    className="text-red-400 hover:text-red-300 transition-colors p-2"
                  >
                    <X size={20} />
                  </button>
                </li>
              ))}
            </ul>

            <div className="border-t border-gray-700 pt-4 space-y-4">
              <div className="flex justify-between items-center">
                <span className="text-gray-300">Subtotal:</span>
                <span className="text-white">${total.toFixed(2)}</span>
              </div>
              <div className="flex justify-between items-center">
                <span className="text-gray-300">Tax:</span>
                <span className="text-white">${(total * 0.1).toFixed(2)}</span>
              </div>
              <div className="flex justify-between items-center text-xl font-bold">
                <span className="text-white">Total:</span>
                <span className="text-blue-400">${(total * 1.1).toFixed(2)}</span>
              </div>

              <button
                onClick={handleCheckout}
                className="w-full bg-blue-500 hover:bg-blue-600 text-white py-4 px-6 rounded-lg font-semibold flex items-center justify-center space-x-2 transition-colors"
                disabled={cart.length === 0}
              >
                <CreditCard className="w-5 h-5" />
                <span>Proceed to Payment</span>
              </button>
            </div>
          </>
        )}
      </div>
    </div>
  );
};

export default CartSummary;