import unittest
import requests

class myappTestCase(unittest.TestCase):
  """Test access to myapp written in Flask"""

  def test_root_page(self):
    resp = requests.get('http://127.0.0.1:5000/')
    root_text = resp.text
    self.assertEqual(root_text, 'Hello world')

unittest.main() 


