import unittest
import my_robot

class TestMyRobot (unittest.TestCase):

  def testcreation (self):
    """Should be able to create the robot object"""
    robot = my_robot.MyRobot ('rob')

  def testpresention (self):
    """Robot should be able to present itself"""
    robot = my_robot.MyRobot ('rob')
    robot.present

  def testenergy (self):
    """Robot should be able to give some energy"""
    robot = my_robot.MyRobot ('rob')
    robot.present ()
    self.assertEqual (robot.get_energy (), 99)

if __name__ == '__main__':
  unittest.main()

