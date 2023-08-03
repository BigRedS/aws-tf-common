provider "aws" {
  region = var.region
  default_tags {
    tags = {
      project = "aws-tf-common"
      repo    = "https://github.com/BigRedS/aws-tf-common"
    }
  }
}

resource "aws_route53_zone" "avipm" {
  name = "avi.pm"
}

resource "aws_acm_certificate" "avipm" {
  domain_name               = "avi.pm"
  subject_alternative_names = ["*.avi.pm"]
  validation_method         = "DNS"
}

resource "aws_key_pair" "desktop" {
  key_name   = "desktop"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCh7THLUxzN4aYJMI1aJM4R9i0h0iEKIfVvp7aK9lOb3FZvgOzvXGnGip7MeEoCT38GIjkFwd5OZ1pJ+GFgUWPOlK5n9+g7osRhNf2TtvRuwtt6W29vcDqJHPJuVeTrPvlfd3SACoilq3ekjxdBaousJGz/1de+W70nRRu0ZBgqU6efM9Qz/1Vupn6LXcJhkMPBJ2zCzld0yt7S2UF+Txzta6cV50qs+xC3s/pUQXrK+5CurvjCX30qHjC1zdFqSX/DoZbf/WVi+MwDPNfrHyrw8rqQluYxYj8xIOEqUQBrXejYMvjccZcgvj21QD/sHu7lpb1S8Jh+JmJBTpJRrneFtGz2OqaaPgmYpC+c1Xedp+4j/Oo3i79KpFXvd9e7PCob4O4n2o/odxF5tZFzu4ivFAieQNK8P1ifY4CXwZPhgyRd+xDcl4yANMOQUcqdACGIcqiFlnto+Z7STJmrFSlU61tv+e7xohDq7zN3a/Hj7gx0taltE5H4Amb52HWSpsc="
}

resource "aws_key_pair" "nuc" {
  key_name   = "nuc"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDHvCKMfBdMAFMSOvprB8ZczDuraG9XZfUU2lSSqaK9LuWiZdymBZwUHSysk/MdYr7I9CvEN7OeWvSMakLO+zPT0QdxFXn4bNH1bt676W8I/q3ivM6CuAkr1AqdUiCEEQk1VoylcuacTqNLJHq2bNTfExePBe8EkAZFcTFHJDoFslwLtIrf7dlZIN5FUZdMUNuVmoh0SG9AbuUzwrw1FYSoPgRUvwwodJjHnX1Z33A2TxV0kB0aLcj2c2vZ3xAZO8KVxa9jEsFxrRG51aN7UfU9qBv3yLn/JFc9eAC4CArzadto1UoUVoRSIvyr1OgdBmVkH179FGJPZVgwV+qCUEM+Cs1tb38+ygAeCPKcpMsOpGoCwl+Wio7LcZRZnkSV8knAnbbhZzAb3lBXptw8NIUkSJT8HrcLBaobmW++2MVUVLbkGjRXykVfnSFrdM3HJITH69Qmaef3UwzexLADQUXPVnGSmK/73s5+saZfRLE9acCCqOy/NwEXmPt9q+nght8="
}

resource "aws_key_pair" "donkey" {
  key_name   = "donkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsgqDf9X2an/rhv+s56gQ5e8eATyFnqSlcdUkv3JJEpzd1I3mdyh7oB8zyR7c2oblf8cmj6zCek1p5+WK8OqVRS3pjSuiPj3IguZNsIYGtc2GSeTELhtZNNN+7b07Mybk3KL64i3rZK8m8kntO2C47jJ8SxvocIMye6OOSXVL5sjxdmGvkuR2mNzHapJZQTVpOzhkv41Lrq6WCX45+G+6H0THD+e419+L5DunU34U6j7g3KbDgtljLsnuf6tIhEled5SOBpXx3KiCGPaGzqw4suExvrLSIyJuI8BI2981TZKhy/+av3M1ECdDXKPml3ywjMBju9BaS7AcwTB7pu0N+m4QCFYtJ4FTa2RuaFIAOPgpknWGiHFUBO0f/+XZnUNVvh3UrncnjyC36iweffi+lcc1IGtklPWghkqfBl87czsgwIBJWjl8VySZCLUytizkFxQjh1TeeyaDzBf3Zxs2IehiRBnsGAHSwwQxakLdrX5FFx9Wj+qouO4NbOkE8AKE="
}
