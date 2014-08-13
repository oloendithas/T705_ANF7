.class public Lcom/nuance/connect/internal/GenericProperty$StringProperty;
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
    name = "StringProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/connect/internal/GenericProperty;",
        "Lcom/nuance/connect/internal/Property",
        "<",
        "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private overrideFlags:I

.field private source:Lcom/nuance/connect/internal/Property$Source;

.field private store:Lcom/nuance/connect/store/PersistentDataStore;

.field private value:Ljava/lang/String;

.field private verification:I

.field private verifier:Lcom/nuance/connect/internal/Property$Verifier;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    .line 492
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    .line 495
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

    .line 507
    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    .line 508
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    .line 509
    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    .line 510
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 511
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "store"    # Lcom/nuance/connect/store/PersistentDataStore;

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    .line 492
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    .line 495
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

    .line 521
    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    .line 522
    iput-object p3, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 523
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    .line 524
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, p2, v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->loadValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V

    .line 525
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "store"    # Lcom/nuance/connect/store/PersistentDataStore;
    .param p4, "verification"    # I
    .param p5, "overrideFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/store/PersistentDataStore;",
            "II",
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p6, "verifier":Lcom/nuance/connect/internal/Property$Verifier;, "Lcom/nuance/connect/internal/Property$Verifier<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    .line 492
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    .line 495
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

    .line 539
    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    .line 540
    iput-object p3, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 541
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    .line 542
    iput p4, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    .line 543
    iput p5, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    .line 544
    if-eqz p6, :cond_0

    .line 545
    iput-object p6, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    .line 547
    :cond_0
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, p2, v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->loadValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V

    .line 548
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
    .line 624
    .local p0, "reference":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<TT;>;"
    :try_start_0
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument supplied for Property<String>.set() "

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
.end method

.method private allowOverride(Lcom/nuance/connect/internal/Property$Source;)Z
    .locals 4
    .param p1, "newSource"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 673
    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 675
    :cond_1
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 678
    :cond_2
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    .line 681
    :cond_3
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 684
    goto :goto_0
.end method

.method private loadValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 3
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "defaultSource"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "storedProp":Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "storedProp":Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;
    check-cast v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;

    .line 637
    .restart local v0    # "storedProp":Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;
    :cond_0
    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    .line 639
    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->getSource()Lcom/nuance/connect/internal/Property$Source;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 647
    :cond_1
    :goto_0
    return-void

    .line 641
    :cond_2
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    .line 642
    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 643
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 644
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->save()V

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 614
    iget-object v3, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

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

    .line 615
    .local v2, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property$ValueListener;

    .line 616
    .local v1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 617
    invoke-interface {v1, p0}, Lcom/nuance/connect/internal/Property$ValueListener;->onValueChanged(Lcom/nuance/connect/internal/Property;)V

    goto :goto_0

    .line 620
    .end local v1    # "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/String;>;"
    .end local v2    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/String;>;>;"
    :cond_1
    return-void
.end method

.method private save()V
    .locals 3

    .prologue
    .line 688
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;

    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;-><init>(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V

    .line 689
    .local v0, "toSave":Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 692
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V

    .line 586
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
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    if-eqz p2, :cond_0

    .line 592
    invoke-interface {p1, p0}, Lcom/nuance/connect/internal/Property$ValueListener;->onValueChanged(Lcom/nuance/connect/internal/Property;)V

    .line 594
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
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/String;>;>;"
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

    .line 599
    .local v1, "ref":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0

    .line 601
    .end local v1    # "ref":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideFlags()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    return v0
.end method

.method public getSource()Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    return-object v0
.end method

.method public getTypeArgument()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVerification()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    return v0
.end method

.method public set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty;->reference:Lcom/nuance/connect/internal/Property;

    invoke-static {v0, p1, p2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->_helper(Lcom/nuance/connect/internal/Property;Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 571
    return-void
.end method

.method public setOverrideFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 565
    iput p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    .line 566
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 488
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->setValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 554
    :cond_1
    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->allowOverride(Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    .line 556
    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    .line 557
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->save()V

    .line 558
    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->notifyListeners()V

    .line 561
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "newSource"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-interface {v0, p1, p2, p0}, Lcom/nuance/connect/internal/Property$Verifier;->verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
