.class public Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;
.super Lcom/nuance/connect/internal/GenericProperty;
.source "GenericProperty.java"

# interfaces
.implements Lcom/nuance/connect/internal/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/GenericProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/connect/internal/GenericProperty;",
        "Lcom/nuance/connect/internal/Property",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private overrideFlags:I

.field private source:Lcom/nuance/connect/internal/Property$Source;

.field private store:Lcom/nuance/connect/store/PersistentDataStore;

.field private value:Ljava/lang/Integer;

.field private verification:I

.field private verifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verification:I

    .line 24
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 25
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultIntegerVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultIntegerVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->listeners:Ljava/util/List;

    .line 30
    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    .line 31
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->key:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;
    .param p3, "store"    # Lcom/nuance/connect/store/PersistentDataStore;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verification:I

    .line 24
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 25
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultIntegerVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultIntegerVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->listeners:Ljava/util/List;

    .line 36
    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    .line 37
    iput-object p3, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 38
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->key:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, p2, v0}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->loadPersistedData(Ljava/lang/Integer;Lcom/nuance/connect/internal/Property$Source;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;
    .param p3, "store"    # Lcom/nuance/connect/store/PersistentDataStore;
    .param p4, "verification"    # I
    .param p5, "overrideFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/store/PersistentDataStore;",
            "II",
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p6, "verifier":Lcom/nuance/connect/internal/Property$Verifier;, "Lcom/nuance/connect/internal/Property$Verifier<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verification:I

    .line 24
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 25
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultIntegerVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultIntegerVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->listeners:Ljava/util/List;

    .line 54
    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    .line 55
    iput-object p3, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 56
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->key:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verification:I

    .line 58
    iput p5, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->overrideFlags:I

    .line 59
    if-eqz p6, :cond_0

    .line 60
    iput-object p6, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 62
    :cond_0
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, p2, v0}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->loadPersistedData(Ljava/lang/Integer;Lcom/nuance/connect/internal/Property$Source;)V

    .line 63
    return-void
.end method

.method private static _helper(Lcom/nuance/connect/internal/Property;Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nuance/connect/internal/Property",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/nuance/connect/internal/Property$Source;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "reference":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<TT;>;"
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 143
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "string":Ljava/lang/String;
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 161
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 149
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid argument supplied for Property<Integer>.set() "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_2
    if-nez p1, :cond_3

    .line 151
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p0, v2, p2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    goto :goto_0

    .line 153
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid argument supplied for Property<Integer>.set() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private allowOverride(Lcom/nuance/connect/internal/Property$Source;)Z
    .locals 4
    .param p1, "newSource"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->overrideFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 210
    :cond_2
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->overrideFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    .line 213
    :cond_3
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 216
    goto :goto_0
.end method

.method private loadPersistedData(Ljava/lang/Integer;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 3
    .param p1, "defaultValue"    # Ljava/lang/Integer;
    .param p2, "defaultSource"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "storedProp":Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "storedProp":Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;
    check-cast v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;

    .line 169
    .restart local v0    # "storedProp":Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;
    :cond_0
    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;->getValue()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    .line 171
    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;->getSource()Lcom/nuance/connect/internal/Property$Source;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    .line 174
    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 175
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->save()V

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 132
    iget-object v3, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 133
    .local v2, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Integer;>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property$ValueListener;

    .line 134
    .local v1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v1, p0}, Lcom/nuance/connect/internal/Property$ValueListener;->onValueChanged(Lcom/nuance/connect/internal/Property;)V

    goto :goto_0

    .line 138
    .end local v1    # "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Integer;>;"
    .end local v2    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Integer;>;>;"
    :cond_1
    return-void
.end method

.method private save()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;

    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;-><init>(Ljava/lang/Integer;Lcom/nuance/connect/internal/Property$Source;)V

    .line 221
    .local v0, "toSave":Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V

    .line 106
    return-void
.end method

.method public addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V
    .locals 2
    .param p2, "sendCurrentValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->listeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    if-eqz p2, :cond_0

    .line 112
    invoke-interface {p1, p0}, Lcom/nuance/connect/internal/Property$ValueListener;->onValueChanged(Lcom/nuance/connect/internal/Property;)V

    .line 114
    :cond_0
    return-void
.end method

.method public addListeners(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property$ValueListener;

    .line 119
    .local v1, "ref":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0

    .line 121
    .end local v1    # "ref":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideFlags()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->overrideFlags:I

    return v0
.end method

.method public getSource()Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    return-object v0
.end method

.method public getTypeArgument()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVerification()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verification:I

    return v0
.end method

.method public set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    invoke-static {v0, p1, p2}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->_helper(Lcom/nuance/connect/internal/Property;Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 81
    return-void
.end method

.method public setOverrideFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->overrideFlags:I

    .line 86
    return-void
.end method

.method public setValue(Ljava/lang/Integer;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    :cond_1
    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->allowOverride(Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    .line 71
    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 72
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->save()V

    .line 73
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->notifyListeners()V

    .line 76
    :cond_2
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->setValue(Ljava/lang/Integer;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->value:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-interface {v0, p1, p2, p0}, Lcom/nuance/connect/internal/Property$Verifier;->verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
