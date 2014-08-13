.class public Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;
.super Ljava/lang/Object;
.source "PropertyXmlLoaderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createPropertyXmlLoader()Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "classLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "com.diotek.ime.implement.property.PropertyXmlLoader"

    .line 23
    .local v1, "className":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;

    .line 27
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createXmlLoader()Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;
    .locals 2

    .prologue
    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;->createPropertyXmlLoader()Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 16
    :goto_0
    return-object v1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 11
    :catch_1
    move-exception v0

    .line 12
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 13
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
