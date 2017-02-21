import unittest
import requests

class myappTestCase(unittest.TestCase):
  """Test access to myapp which is written in Flask and python"""

  def test_root_page(self):
    resp = requests.get('http://54.202.80.197:5000/')
    root_text = resp.text
    self.assertEqual(root_text, 'Hello world')

unittest.main() 


