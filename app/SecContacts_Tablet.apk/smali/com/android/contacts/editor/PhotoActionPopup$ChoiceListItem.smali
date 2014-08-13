.class final Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhotoActionPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChoiceListItem"
.end annotation


# static fields
.field public static final ID_PICK_AVATAR:I = 0x7

.field public static final ID_PICK_PHOTO:I = 0x2

.field public static final ID_PICK_SMEMO:I = 0x5

.field public static final ID_PICK_SNOTE:I = 0x4

.field public static final ID_PICK_TAGGED_PICTURE:I = 0x6

.field public static final ID_REMOVE:I = 0x3

.field public static final ID_TAKE_PHOTO:I = 0x1

.field public static final ID_USE_AS_PRIMARY:I


# instance fields
.field private final mCaption:Ljava/lang/String;

.field private final mId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "caption"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->mId:I

    .line 217
    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->mCaption:Ljava/lang/String;

    .line 218
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->mCaption:Ljava/lang/String;

    return-object v0
.end method
