.class public Lcom/android/contacts/list/ContactListFilterController;
.super Ljava/lang/Object;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFilterController:Lcom/android/contacts/list/ContactListFilterControllerImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFilters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInitialized:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListFilterController;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/list/ContactListFilterControllerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/android/contacts/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/list/ContactListFilterControllerImpl;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/contacts/list/ContactListFilterControllerImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/list/ContactListFilterControllerImpl;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/contacts/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/list/ContactListFilterControllerImpl;

    return-object v0
.end method

.method private notifyContactListFilterChanged()V
    .locals 3

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 100
    .local v1, "listener":Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    invoke-interface {v1}, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    .line 102
    .end local v1    # "listener":Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public checkFilterValidity(Z)V
    .locals 0
    .param p1, "notifyListeners"    # Z

    .prologue
    .line 112
    return-void
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getFilters()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mIsInitialized:Z

    return v0
.end method

.method public removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public selectCustomFilter()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;
    .param p2, "persistent"    # Z

    .prologue
    .line 93
    return-void
.end method

.method public setFilterType(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    const/4 v1, -0x2

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    packed-switch p1, :pswitch_data_0

    .line 131
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 134
    .restart local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 135
    return-void

    .line 119
    :pswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 120
    .restart local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 122
    :pswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    const/4 v1, -0x4

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 123
    .restart local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 125
    :pswitch_2
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 126
    .restart local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 128
    :pswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    const/16 v1, -0xc

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 129
    .restart local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
