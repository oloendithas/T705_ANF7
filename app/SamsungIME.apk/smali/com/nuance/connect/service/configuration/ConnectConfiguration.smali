.class public Lcom/nuance/connect/service/configuration/ConnectConfiguration;
.super Ljava/lang/Object;
.source "ConnectConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    }
.end annotation


# static fields
.field private static final ASSET_DATA_FILES_FOLDER:Ljava/lang/String; = ""

.field private static final CONFIGURATION_FILE:Ljava/lang/String; = "connect.dat"

.field private static final CONFIGURATION_FILE_ON_APK:Ljava/lang/String; = "connect.dat"

.field private static final NUANCE_OEM_ID:Ljava/lang/String; = "39124"

.field public static final PROPERTY_DEFAULT_DELAY:Ljava/lang/String; = "DEFAULT_DELAY"

.field public static final PROPERTY_DLM_ADD_WORD_FREQUENCY:Ljava/lang/String; = "DLM_ADD_WORD_FREQUENCY"

.field public static final PROPERTY_DLM_SYNC_FREQUENCY:Ljava/lang/String; = "DLM_SYNC_FREQUENCY"

.field public static final PROPERTY_KEY_ACCOUNT:Ljava/lang/String; = "KEY_ACCOUNT"

.field public static final PROPERTY_KEY_BUILD:Ljava/lang/String; = "KEY_BUILD"

.field public static final PROPERTY_KEY_DEVICE:Ljava/lang/String; = "KEY_DEVICE"

.field public static final PROPERTY_MQTT_ENABLED:Ljava/lang/String; = "MQTT_ENABLED"

.field public static final PROPERTY_MQTT_HOSTS:Ljava/lang/String; = "MQTT_HOSTS"

.field public static final PROPERTY_MQTT_KEEPALIVE:Ljava/lang/String; = "MQTT_KEEP_ALIVE"

.field public static final PROPERTY_POLLING_FREQUENCY:Ljava/lang/String; = "POLLING_FREQUENCY"

.field public static final PROPERTY_REPORTING_AGGREGATE_FREQUENCY:Ljava/lang/String; = "AGGREGATE_FREQUENCY"

.field public static final PROPERTY_REPORTING_STATISTICS_FREQUENCY:Ljava/lang/String; = "REPORTING_FREQUENCY"

.field public static final PROPERTY_RESEARCH_UDB_UPLOAD_FREQUENCY:Ljava/lang/String; = "UDB_UPLOAD_FREQUENCY"

.field public static final TYPE_BOOLEAN:I = 0x4

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_OBJECT:I = 0x1

.field public static final TYPE_STRING:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final VERIFY_NEG_ONE_INT:I = 0x5

.field public static final VERIFY_NON_NEGATIVE_INT:I = 0x4

.field public static final VERIFY_POSITIVE_INT:I = 0x3

.field public static final VERIFY_TYPE:I = 0x1

.field public static final VERIFY_UNKNOWN:I = 0x0

.field public static final VERIFY_URL:I = 0x2


# instance fields
.field private booleanVerifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/nuance/connect/service/ConnectClient;

.field private integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final propertyStore:Lcom/nuance/connect/internal/PropertyStore;

.field private stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlVerifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 2
    .param p1, "service"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 119
    new-instance v0, Lcom/nuance/connect/internal/PropertyStore;

    invoke-direct {v0}, Lcom/nuance/connect/internal/PropertyStore;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    .line 652
    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$1;-><init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 662
    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$2;-><init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->urlVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 673
    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$3;-><init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 711
    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$4;-><init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->booleanVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 139
    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    .line 140
    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setup()V

    .line 141
    return-void
.end method

.method private getAPKFileContents(Ljava/lang/String;)[B
    .locals 5
    .param p1, "fullpath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 464
    const-string v3, "39124"

    sget-object v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v4}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    :goto_0
    return-object v2

    .line 467
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 469
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 472
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-static {v1, v3}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->readBytes(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 474
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 476
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getConfigurationFilenameOnFilesystem()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 451
    .local v0, "dataDir":Ljava/lang/String;
    move-object v1, v0

    .line 452
    .local v1, "nativeDataFileDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "connect.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isValidConfiguration([B)Z
    .locals 2
    .param p1, "digest"    # [B

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->createFromDigest([B)Ljava/util/Map;

    move-result-object v0

    .line 369
    .local v0, "propertyList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->isValidConfigurationProperties(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setConfigurationProperties(Ljava/util/Map;)V

    .line 372
    const/4 v1, 0x1

    .line 375
    .end local v0    # "propertyList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    new-array v0, p1, [B

    .line 496
    .local v0, "data":[B
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 497
    return-object v0
.end method

.method private setConfigurationProperties(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 381
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v2

    .line 382
    .local v2, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-eqz v2, :cond_0

    .line 384
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v3

    goto :goto_0

    .line 389
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    :cond_1
    return-void
.end method

.method private setup()V
    .locals 8

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v3

    .line 151
    .local v3, "store":Lcom/nuance/connect/store/PersistentDataStore;
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 152
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->APPLICATION_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 154
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_STRING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 156
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_TYPE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 157
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_STATISTICS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 159
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_USAGE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 161
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BROADCAST_RESPONSE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 164
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DOCUMENT_REVISIONS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 170
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://api.swypeconnect.com/"

    const/4 v4, 0x2

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->urlVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 175
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 180
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7e900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 185
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_LOADTIME:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 188
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->INITIAL_LOADTIME:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 195
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOGGING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 199
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->booleanVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 203
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0xa8c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 208
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_TIME_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 212
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_MAX_RESULTS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc350

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 216
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->AGGREGATE_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0xa8c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 221
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_AGGREGATE_TIME_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 229
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->UDB_UPLOAD_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x20f580

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 237
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_CELLULAR_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x493e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 242
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_WIFI_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 247
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->HTTP_ANALYTICS_TIME:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 251
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->HTTP_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0xa00000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 255
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DLM_SYNC_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 260
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DLM_ADD_WORD_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 269
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MQTT_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->booleanVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 274
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MQTT_HOSTS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 279
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MQTT_KEEP_ALIVE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 284
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MQTT_RECONNECT_CELLULAR:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 289
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MQTT_RECONNECT_WIFI:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 297
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->KEY_DEVICE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 301
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->KEY_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 305
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->KEY_ACCOUNT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 312
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->ACCOUNT_ACCOUNT_EMAIL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 316
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CATEGORY_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 321
    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LANG_AUTO_LIST:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 326
    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->loadOverrides()V

    .line 327
    return-void
.end method

.method private validateProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v1, 0x0

    .line 575
    .local v1, "returnValue":Z
    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    .line 577
    .local v0, "propertyToTest":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-eqz v0, :cond_0

    .line 578
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p2, v2}, Lcom/nuance/connect/internal/Property;->verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v1

    .line 580
    :cond_0
    if-nez v1, :cond_1

    .line 581
    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validation failed while loading override values for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 584
    :cond_1
    return v1
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p2, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/PropertyStore;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 626
    return-void
.end method

.method public createFromDigest([B)Ljava/util/Map;
    .locals 5
    .param p1, "digest"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 528
    invoke-static {p1}, Lcom/nuance/connect/util/EncryptUtils;->decrypt([B)[B

    move-result-object v1

    .line 529
    .local v1, "message":[B
    if-eqz v1, :cond_0

    .line 531
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 537
    :cond_0
    :goto_0
    return-object v2

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "createFromDigest failed; UnsupportedEncodingException"

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final createFromString(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "rawText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 508
    .local v2, "props":Ljava/util/Properties;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v2    # "props":Ljava/util/Properties;
    :goto_0
    return-object v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "createFromString failed: "

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 517
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    .line 399
    return-void
.end method

.method public getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getConfigurationDigest(Z)[B
    .locals 1
    .param p1, "isFromAPK"    # Z

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getConfigurationFromFileSystem(Ljava/lang/String;)[B

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "connect.dat"

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getAPKFileContents(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getConfigurationFromFileSystem(Ljava/lang/String;)[B
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 424
    if-nez p1, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getConfigurationFilenameOnFilesystem()Ljava/lang/String;

    move-result-object p1

    .line 426
    const-string v3, "39124"

    sget-object v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v4}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    :goto_0
    return-object v2

    .line 431
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "configurationFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v1, v3}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->readBytes(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 437
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 439
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final isValidConfigurationProperties(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "propertyList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 563
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    const/4 v2, 0x0

    .line 569
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadOverrides()V
    .locals 2

    .prologue
    .line 336
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getConfigurationDigest(Z)[B

    move-result-object v0

    .line 338
    .local v0, "digestInConfigFile":[B
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->isValidConfiguration([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getConfigurationDigest(Z)[B

    move-result-object v0

    .line 342
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->isValidConfiguration([B)Z

    .line 344
    :cond_0
    return-void
.end method

.method public overrideFromServer(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 599
    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v1

    .line 600
    .local v1, "p":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-eqz v1, :cond_0

    .line 602
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error overriding configration value "

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 588
    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v1

    .line 589
    .local v1, "p":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-eqz v1, :cond_0

    .line 591
    :try_start_0
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v1, p2, v2}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error overriding configration value "

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public overrideFromServer(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 610
    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v1

    .line 611
    .local v1, "p":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-eqz v1, :cond_0

    .line 613
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error overriding configration value "

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "key"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 630
    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "key"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 634
    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 638
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/PropertyStore;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 545
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v4, v2}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 550
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateFromString(Ljava/lang/String;Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)Z
    .locals 6
    .param p1, "configSettings"    # Ljava/lang/String;
    .param p2, "configFrom"    # Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 348
    .local v3, "propertyList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->isValidConfigurationProperties(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 350
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v2

    .line 351
    .local v2, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-eqz v2, :cond_0

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v2, v4, v5}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    goto :goto_0

    .line 355
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    :cond_1
    const/4 v4, 0x1

    .line 357
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
