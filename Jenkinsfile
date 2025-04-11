pipeline {
  agent any
  stages {
    stage('Actualizar código') {
      steps {
        git branch: 'main', url: 'https://github.com/DEVHugoC/ETL-Pipeline-F-.git'
      }
    }
    stage('Ejecutar ETL') {
      steps {
        sh '''
          if [ ! -d venv ]; then
            python3 -m venv venv
            . venv/bin/activate
            pip install pandas seaborn matplotlib openpyxl
          else
            . venv/bin/activate
          fi
          python3 Proceso.py
        '''
      }
    }
    stage('Copiar BD al host') {
      steps {
        sh '''
          chmod +x copiar_bd.sh
          ./copiar_bd.sh
        '''
      }
    }
  }
  post {
    success { echo 'ETL completado y base de datos copiada.' }
    failure { echo 'Error en ETL.' }
  }
}
