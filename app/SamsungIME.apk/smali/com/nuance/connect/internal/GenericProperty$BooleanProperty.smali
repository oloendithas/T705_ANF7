.class public Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;
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
    name = "BooleanProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/connect/internal/GenericProperty;",
        "Lcom/nuance/connect/internal/Property",
        "<",
        "Ljava/lang/Boolean;",
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
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private overrideFlags:I

.field private source:Lcom/nuance/connect/internal/Property$Source;

.field private store:Lcom/nuance/connect/store/PersistentDataStore;

.field private value:Ljava/lang/Boolean;

.field private verification:I

.field private verifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    .line 251
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verification:I

    .line 254
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultBooleanVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultBooleanVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->listeners:Ljava/util/List;

    .line 264
    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    .line 265
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->key:Ljava/lang/String;

    .line 266
    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    .line 267
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 268
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;
    .param p3, "store"    # Lcom/nuance/connect/store/PersistentDataStore;

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    .line 251
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verification:I

    .line 254
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultBooleanVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultBooleanVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->listeners:Ljava/util/List;

    .line 279
    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    .line 280
    iput-object p3, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 281
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->key:Ljava/lang/String;

    .line 282
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, p2, v0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->loadValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;
    .param p3, "store"    # Lcom/nuance/connect/store/PersistentDataStore;
    .param p4, "verification"    # I
    .param p5, "overrideFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/nuance/connect/store/PersistentDataStore;",
            "II",
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p6, "verifier":Lcom/nuance/connect/internal/Property$Verifier;, "Lcom/nuance/connect/internal/Property$Verifier<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    .line 251
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verification:I

    .line 254
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultBooleanVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultBooleanVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->listeners:Ljava/util/List;

    .line 296
    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    .line 297
    iput-object p3, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 298
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->key:Ljava/lang/String;

    .line 299
    iput p4, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verification:I

    .line 300
    iput p5, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->overrideFlags:I

    .line 301
    if-eqz p6, :cond_0

    .line 302
    iput-object p6, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 304
    :cond_0
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, p2, v0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->loadValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    .line 305
    return-void
.end method

.method private static _helper(Lcom/nuance/connect/internal/Property;Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 4
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
    .line 384
    .local p0, "reference":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<TT;>;"
    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 385
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 390
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 391
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    .end local p1    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid argument supplied for Property<Boolean>.set() "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_2
    if-nez p1, :cond_3

    .line 393
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p0, v1, p2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    goto :goto_0

    .line 395
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument supplied for Property<Boolean>.set() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private allowOverride(Lcom/nuance/connect/internal/Property$Source;)Z
    .locals 4
    .param p1, "newSource"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 447
    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->overrideFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 452
    :cond_2
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->overrideFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    .line 455
    :cond_3
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 458
    goto :goto_0
.end method

.method private loadValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 3
    .param p1, "defaultValue"    # Ljava/lang/Boolean;
    .param p2, "defaultSource"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "storedProp":Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "storedProp":Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;
    check-cast v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;

    .line 411
    .restart local v0    # "storedProp":Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;
    :cond_0
    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    .line 413
    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;->getSource()Lcom/nuance/connect/internal/Property$Source;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 421
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    .line 416
    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 417
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->save()V

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 374
    iget-object v3, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->listeners:Ljava/util/List;

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

    .line 375
    .local v2, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Boolean;>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property$ValueListener;

    .line 376
    .local v1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_0

    .line 377
    invoke-interface {v1, p0}, Lcom/nuance/connect/internal/Property$ValueListener;->onValueChanged(Lcom/nuance/connect/internal/Property;)V

    goto :goto_0

    .line 380
    .end local v1    # "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Boolean;>;"
    .end local v2    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Boolean;>;>;"
    :cond_1
    return-void
.end method

.method private save()V
    .locals 3

    .prologue
    .line 462
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;

    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;-><init>(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    .line 463
    .local v0, "toSave":Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 466
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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V

    .line 343
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
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->listeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    if-eqz p2, :cond_0

    .line 349
    invoke-interface {p1, p0}, Lcom/nuance/connect/internal/Property$ValueListener;->onValueChanged(Lcom/nuance/connect/internal/Property;)V

    .line 351
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
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Boolean;>;>;"
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

    .line 356
    .local v1, "ref":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0

    .line 358
    .end local v1    # "ref":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideFlags()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->overrideFlags:I

    return v0
.end method

.method public getSource()Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    return-object v0
.end method

.method public getTypeArgument()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getVerification()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verification:I

    return v0
.end method

.method public set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    invoke-static {v0, p1, p2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->_helper(Lcom/nuance/connect/internal/Property;Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 323
    return-void
.end method

.method public setOverrideFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 327
    iput p1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->overrideFlags:I

    .line 328
    return-void
.end method

.method public setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    :cond_1
    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->allowOverride(Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    .line 313
    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 314
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->save()V

    .line 315
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->notifyListeners()V

    .line 318
    :cond_2
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 247
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->value:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)Z
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "newSource"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1, p0}, Lcom/nuance/connect/internal/Property$Verifier;->verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z

    move-result v0

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
