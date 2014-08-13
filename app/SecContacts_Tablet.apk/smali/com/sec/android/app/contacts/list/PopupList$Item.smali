.class public Lcom/sec/android/app/contacts/list/PopupList$Item;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public final id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/sec/android/app/contacts/list/PopupList$Item;->id:I

    .line 55
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/PopupList$Item;->title:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/PopupList$Item;->title:Ljava/lang/String;

    .line 60
    return-void
.end method
