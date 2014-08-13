.class public Lcom/nuance/connect/internal/ConnectResources;
.super Ljava/lang/Object;
.source "ConnectResources.java"


# static fields
.field private static final FILE_MAP_PREF:Ljava/lang/String; = "File_Map_Preference"

.field private static final LANGUAGE_KEYS:Ljava/lang/String; = "_LanguageKeys_"

.field private static final PAIR_DELIMETER:Ljava/lang/String; = "_PairDelimeter_"

.field private static final PREFERENCES:Ljava/lang/String; = "connect_res/pref/resources"

.field private static final RESOURCES_FOLDER:Ljava/lang/String; = "connect_res"

.field private static final VALUE_DELIMETER:Ljava/lang/String; = "_ValueDelimeter_"

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final appFilesFolder:Ljava/lang/String;

.field private fileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;

.field private replaceStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;

.field private store:Lcom/nuance/connect/store/PersistentDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/ConnectResources;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appFilesFolder"    # Ljava/lang/String;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->replaceStrings:Ljava/util/Map;

    .line 43
    new-instance v6, Lcom/nuance/connect/store/SQLiteDataStore;

    const-string v7, "connect_res"

    invoke-direct {v6, p1, v7}, Lcom/nuance/connect/store/SQLiteDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 44
    iput-object p2, p0, Lcom/nuance/connect/internal/ConnectResources;->appFilesFolder:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/nuance/connect/internal/ConnectResources;->resources:Landroid/content/res/Resources;

    .line 46
    iput-object p4, p0, Lcom/nuance/connect/internal/ConnectResources;->packageName:Ljava/lang/String;

    .line 48
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->fileMap:Ljava/util/HashMap;

    .line 49
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string v7, "File_Map_Preference"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "s":Ljava/lang/String;
    const-string v6, "_PairDelimeter_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 51
    .local v5, "set":Ljava/lang/String;
    const-string v6, "_ValueDelimeter_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "pair":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 53
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->fileMap:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v3, v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "pair":[Ljava/lang/String;
    .end local v5    # "set":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    const-string v0, "-r"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistFileMap()V
    .locals 6

    .prologue
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->fileMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v3, "_ValueDelimeter_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v3, "_PairDelimeter_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 237
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string v4, "File_Map_Preference"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    return-void
.end method


# virtual methods
.method clearResourcesForLanguage(Ljava/lang/String;)V
    .locals 9
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_LanguageKeys_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string v7, ""

    invoke-interface {v6, v3, v7}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "value":Ljava/lang/String;
    const-string v6, "_ValueDelimeter_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 105
    .local v1, "entry":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "entry":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v6, v3}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 108
    return-void
.end method

.method getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->fileMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "filename":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 146
    .local v0, "d":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 149
    .end local v0    # "d":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method getLanguageBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ConnectResources;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getLanguageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ConnectResources;->getLanguageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLanguageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/connect/internal/ConnectResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 178
    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "localeStr":Ljava/lang/String;
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 180
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/connect/internal/ConnectResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_0
    if-nez v1, :cond_1

    .line 184
    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .end local v0    # "localeStr":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 160
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectResources;->resources:Landroid/content/res/Resources;

    const-string v3, "string"

    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectResources;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 162
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectResources;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .end local v0    # "id":I
    :cond_0
    return-object v1
.end method

.method hasResourcesForLanguage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_LanguageKeys_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, v0}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method replaceResourcesBegin(Ljava/lang/String;)V
    .locals 9
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->replaceStrings:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    sget-object v6, Lcom/nuance/connect/internal/ConnectResources;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConnectResources: Already updating? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 64
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v4, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_LanguageKeys_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "value":Ljava/lang/String;
    const-string v6, "_ValueDelimeter_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 67
    .local v1, "entry":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "entry":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectResources;->replaceStrings:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method replaceResourcesEnd(Ljava/lang/String;)V
    .locals 6
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->replaceStrings:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    sget-object v3, Lcom/nuance/connect/internal/ConnectResources;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectResources-end: not replacing a resource-set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->replaceStrings:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "entry":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v3, "_ValueDelimeter_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 86
    .end local v0    # "entry":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->replaceStrings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_LanguageKeys_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method replaceResourcesString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectResources;->replaceStrings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/nuance/connect/internal/ConnectResources;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectResources-string: not replacing a resource-set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectResources;->replaceStrings:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setBitmap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectResources;->appFilesFolder:Ljava/lang/String;

    const-string v3, "connect_res"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    .end local v0    # "directory":Ljava/io/File;
    :goto_0
    return-void

    .line 125
    .restart local v0    # "directory":Ljava/io/File;
    :cond_0
    const-string v2, "bitmap"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 129
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/nuance/connect/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectResources;->fileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0}, Lcom/nuance/connect/internal/ConnectResources;->persistFileMap()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method setLanguageBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/nuance/connect/internal/ConnectResources;->setBitmap(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method setLanguageString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method setLanguageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/nuance/connect/internal/ConnectResources;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/ConnectResources;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "localeStr":Ljava/lang/String;
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/nuance/connect/internal/ConnectResources;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/ConnectResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 209
    invoke-virtual {p0, p1, p3}, Lcom/nuance/connect/internal/ConnectResources;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_1
    return-void
.end method

.method setLanguageStrings(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "processedStrings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    check-cast v3, Lcom/nuance/connect/store/SQLiteDataStore;

    invoke-virtual {v3}, Lcom/nuance/connect/store/SQLiteDataStore;->beginTransaction()V

    .line 219
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, p1, v2}, Lcom/nuance/connect/internal/ConnectResources;->replaceResourcesString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    check-cast v3, Lcom/nuance/connect/store/SQLiteDataStore;

    invoke-virtual {v3}, Lcom/nuance/connect/store/SQLiteDataStore;->endTransaction()V

    .line 227
    return-void
.end method

.method setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectResources;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    return-void
.end method
