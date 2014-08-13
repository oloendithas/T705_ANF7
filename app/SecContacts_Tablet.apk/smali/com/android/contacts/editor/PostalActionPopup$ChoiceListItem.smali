.class final Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;
.super Ljava/lang/Object;
.source "PostalActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PostalActionPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChoiceListItem"
.end annotation


# instance fields
.field private final mSelectStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p2, p0, Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;->mSelectStr:Ljava/lang/String;

    .line 420
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;->mSelectStr:Ljava/lang/String;

    return-object v0
.end method
