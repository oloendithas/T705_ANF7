.class public Ljava/security/Provider$Service;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;

.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private className:Ljava/lang/String;

.field private implementation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private lastClassName:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    if-nez p1, :cond_0

    .line 860
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_0
    if-nez p2, :cond_1

    .line 862
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_1
    if-nez p3, :cond_2

    .line 864
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_2
    if-nez p4, :cond_3

    .line 866
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "className == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_3
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 869
    iput-object p2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 870
    iput-object p3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 871
    iput-object p4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 872
    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p5

    .end local p5    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iput-object p5, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 874
    if-eqz p6, :cond_5

    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p6

    .end local p6    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iput-object p6, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 877
    return-void
.end method

.method static synthetic access$000(Ljava/security/Provider$Service;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/security/Provider$Service;

    .prologue
    .line 809
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/security/Provider$Service;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/security/Provider$Service;

    .prologue
    .line 809
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/security/Provider$Service;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/security/Provider$Service;

    .prologue
    .line 809
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Ljava/security/Provider$Service;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/security/Provider$Service;

    .prologue
    .line 809
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/security/Provider$Service;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 809
    iput-object p1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Ljava/security/Provider$Service;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/security/Provider$Service;

    .prologue
    .line 809
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method addAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 885
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 886
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 888
    :cond_1
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method getAliases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    if-nez v0, :cond_0

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 967
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 954
    if-nez p1, :cond_0

    .line 955
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 958
    const/4 v0, 0x0

    .line 960
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 987
    iget-object v4, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    iget-object v5, p0, Ljava/security/Provider$Service;->lastClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 988
    :cond_0
    iget-object v4, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 989
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 990
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 993
    :cond_1
    :try_start_0
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    .line 994
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    iput-object v4, p0, Ljava/security/Provider$Service;->lastClassName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_2
    if-nez p1, :cond_3

    .line 1001
    :try_start_1
    iget-object v4, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1019
    :goto_0
    return-object v4

    .line 995
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 996
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " implementation not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1002
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1003
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " implementation not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1007
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1008
    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": service cannot use the parameter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1011
    :cond_4
    new-array v3, v7, [Ljava/lang/Class;

    .line 1012
    .local v3, "parameterTypes":[Ljava/lang/Class;
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 1014
    .local v2, "initargs":[Ljava/lang/Object;
    :try_start_2
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    const-string v5, "CertStore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1015
    const/4 v4, 0x0

    const-string v5, "java.security.cert.CertStoreParameters"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1019
    :goto_1
    iget-object v4, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 1017
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1021
    :catch_2
    move-exception v1

    .line 1022
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " implementation not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 898
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 899
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 901
    :cond_1
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    return-void
.end method

.method public supportsParameter(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 1037
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAliases "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    :cond_0
    iget-object v1, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAttributes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    :cond_1
    return-object v0
.end method
