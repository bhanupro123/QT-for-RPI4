#ifndef BLACK_H
#define BLACK_H

#include <QObject>
#include <QSqlDatabase>
#include<QStringList>
#include <QStringListModel>
class Black:public QObject
{
    Q_OBJECT
public:
    explicit Black(QObject *parent = nullptr);
signals:
    void list(QString str1);
    void mod(bool b);
    void count(int coun);
public slots:
    //void verify(QString username , QString password);
    void add(QString id,QString username , QString password);
    void len(QString a);
    //void delet(QString username , QString password);
    //void update(QString username , QString password);
    void ulist();
private:
    QSqlDatabase db1;
    QStringList usern;
    QString un;
    bool boo=true;
    int a;

};

#endif // BLACK_H
