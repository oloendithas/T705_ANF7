.class public Lcom/nuance/connect/store/SharedPrefStore;
.super Ljava/lang/Object;
.source "SharedPrefStore.java"

# interfaces
.implements Lcom/nuance/connect/store/PersistentDataStore;


# instance fields
.field private prefPath:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prefPath"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/nuance/connect/store/SharedPrefStore;->prefPath:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/nuance/connect/store/SharedPrefStore;->prefPath:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 4

    .prologue
    .line 114
    iget-object v3, p0, Lcom/nuance/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 115
    .local v2, "preferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nuance/connect/store/SharedPrefStore;->delete(Ljava/lang/String;)Z

    goto :goto_0

    .line 118
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/nuance/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    const/4 v1, 0x0

    return v1
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 79
    move-object v0, p2

    .line 80
    .local v0, "result":Ljava/lang/Boolean;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/store/SharedPrefStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "stringValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 85
    .end local p2    # "defaultValue":Ljava/lang/Boolean;
    :goto_0
    return-object p2

    .line 84
    .restart local p2    # "defaultValue":Ljava/lang/Boolean;
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    move-object p2, v0

    .line 85
    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 68
    move v0, p2

    .line 69
    .local v0, "result":Z
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/store/SharedPrefStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "stringValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 74
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 73
    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move p2, v0

    .line 74
    goto :goto_0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 38
    move v0, p2

    .line 39
    .local v0, "result":I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/store/SharedPrefStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 45
    :goto_0
    return v0

    .line 42
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 53
    move-wide v0, p2

    .line 54
    .local v0, "result":J
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/nuance/connect/store/SharedPrefStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 60
    :goto_0
    return-wide v0

    .line 57
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SharedPrefStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/nuance/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 24
    move-object v0, p2

    .line 26
    :cond_0
    return-object v0
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 90
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SharedPrefStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SharedPrefStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 64
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SharedPrefStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 98
    invoke-static {p2}, Lcom/nuance/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SharedPrefStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/nuance/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p2}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    const/4 v1, 0x1

    return v1
.end method
