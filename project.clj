(defproject ejc-sql "0.1.0-SNAPSHOT"
  :description "Simple command-line jdbc client"
  :url "http://example.com/FIXME"
  :license {:name "GPL 2.0+"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :repositories {"local" ~(str (.toURI (java.io.File. "maven_repository")))}
  :source-paths ["src/clj"]
  :dependencies [[org.clojure/clojure "1.5.1"]
                 [org.clojure/clojure-contrib "1.2.0"]
                 [org.clojure/java.jdbc "0.3.0-beta1"]
                 [org.apache.openjpa/openjpa-all "2.2.2"]
                 [com.cemerick/pomegranate "0.2.0"]
                 ])
