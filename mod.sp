
variable "v1" {
  type    = string
  default = "m1-default"
}


mod "m1" {
  title   = "Mod 1"
  require {
    mod "github.com/kaidaguerre/steampipe-mod-m2" {
      version = "*"
      args = {
        v1 = var.v1
      }
    }
  }
}

dashboard "d1"{
    table {
       query = query.q1
    }
}

query "q1"{
    sql = m2.query.q1.sql
}
