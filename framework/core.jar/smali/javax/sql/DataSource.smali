.class public interface abstract Ljavax/sql/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"

# interfaces
.implements Ljava/sql/Wrapper;
.implements Ljavax/sql/CommonDataSource;


# virtual methods
.method public abstract getConnection()Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
