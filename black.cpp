#include "black.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QQmlEngine>
#include <QDebug>
#include <QSqlDatabase>
#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlDriverPlugin>
#include <QtSql/QSqlQuery>
#include <QSqlQuery>
#include <QStringList>
#include <QString>
#include <QQmlContext>
#include <QQuickView>
#include <QDebug>
#include <QSqlError>
#include <QSqlTableModel>
#include <QSqlRecord>
Black::Black(QObject* parent) : QObject(parent)
{
    //QSqlDatabase db1 = QSqlDatabase::database(":memory:");
    QSqlDatabase db1 = QSqlDatabase::addDatabase("QSQLITE");
    db1.setDatabaseName("database.db");
    bool ok1 = db1.open();
    if(ok1==true)
    {
        qDebug()<<ok1<<"damn1";
    }

    QSqlQuery query;
    query.prepare("CREATE TABLE IF NOT EXISTS bhanupro4("
                  "id varchar(3) , "
                  "username varchar(15) primary key, "
                  "password varchar(10));");
    //CREATE TABLE bhanupro3(id INTEGER,username TEXT PRIMARY KEY,password TEXT);
    query.exec();
    qDebug()<<query.lastError();
    QSqlQuery q;
    q.prepare("select username FROM bhanupro4");

    q.exec();

    while (q.next()) {

        usern<< q.value(1).toString();
    }
    qDebug()<<usern;
}

void Black::add(QString id, QString username, QString password)
{

    QSqlQuery query1;

    query1.prepare("INSERT INTO bhanupro4(id,username,password) "
                   "VALUES ('"+id+"','"+username+"','"+password+"')");
    query1.exec();
    qDebug()<<query1.lastError();
    emit mod(boo);
}
void Black::len(QString a)
{
    emit count(a.length());
    qDebug()<<a<<a.length();
}

void Black::ulist()
{
    QSqlTableModel model;
    model.setTable("bhanupro4");
    model.setSort(5, Qt::AscendingOrder);
    model.select();

    for (int i = 0; i < model.rowCount(); ++i) {
        QString usernam = model.record(i).value("username").toString();
        emit list(usernam);

        qDebug()<<i<<usernam;
    }
}
