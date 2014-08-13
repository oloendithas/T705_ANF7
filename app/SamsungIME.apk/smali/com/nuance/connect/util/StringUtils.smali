.class public Lcom/nuance/connect/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final DELIMITER:Ljava/lang/String; = ","


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileContents(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "s":Ljava/util/Scanner;
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v0    # "s":Ljava/util/Scanner;
    .local v1, "s":Ljava/util/Scanner;
    :try_start_1
    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    :cond_0
    move-object v0, v1

    .line 50
    .end local v1    # "s":Ljava/util/Scanner;
    .restart local v0    # "s":Ljava/util/Scanner;
    :goto_0
    return-object v2

    .line 41
    :catch_0
    move-exception v2

    .line 46
    :goto_1
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 50
    :cond_1
    :goto_2
    const-string v2, ""

    goto :goto_0

    .line 43
    :catch_1
    move-exception v2

    .line 46
    :goto_3
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    goto :goto_2

    .line 46
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v2

    .line 46
    .end local v0    # "s":Ljava/util/Scanner;
    .restart local v1    # "s":Ljava/util/Scanner;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "s":Ljava/util/Scanner;
    .restart local v0    # "s":Ljava/util/Scanner;
    goto :goto_4

    .line 43
    .end local v0    # "s":Ljava/util/Scanner;
    .restart local v1    # "s":Ljava/util/Scanner;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "s":Ljava/util/Scanner;
    .restart local v0    # "s":Ljava/util/Scanner;
    goto :goto_3

    .line 41
    .end local v0    # "s":Ljava/util/Scanner;
    .restart local v1    # "s":Ljava/util/Scanner;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "s":Ljava/util/Scanner;
    .restart local v0    # "s":Ljava/util/Scanner;
    goto :goto_1
.end method

.method public static implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static implode(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONArray;
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_0
    invoke-static {v1, p1}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 59
    .restart local v0    # "i":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static implode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ary"    # [Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const-string v2, ""

    .line 29
    :goto_0
    return-object v2

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v1, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 24
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 81
    const-string v3, ""

    .line 92
    :goto_0
    return-object v3

    .line 84
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v2, "string":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 92
    .end local v1    # "item":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static normalizeEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    .line 69
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    .local v1, "s":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/StringBuilder;
    .end local p0    # "email":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
