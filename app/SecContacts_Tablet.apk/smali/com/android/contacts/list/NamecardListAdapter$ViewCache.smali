.class public Lcom/android/contacts/list/NamecardListAdapter$ViewCache;
.super Ljava/lang/Object;
.source "NamecardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/NamecardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewCache"
.end annotation


# instance fields
.field mCallButton:Landroid/widget/ImageView;

.field mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field mCompany:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field mDisplayName:Landroid/widget/TextView;

.field mEmailButton:Landroid/widget/ImageView;

.field mEmailDivider:Landroid/view/View;

.field mImage:Landroid/widget/ImageView;

.field mMMSButton:Landroid/widget/ImageView;

.field mMMSDivider:Landroid/view/View;

.field mQuickContactEnabled:Z

.field mTextArea:Landroid/view/View;

.field final synthetic this$0:Lcom/android/contacts/list/NamecardListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/NamecardListAdapter;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "quickContactEnabled"    # Z

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mContext:Landroid/content/Context;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mQuickContactEnabled:Z

    .line 211
    iput-object p2, p0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mContext:Landroid/content/Context;

    .line 212
    iput-boolean p3, p0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mQuickContactEnabled:Z

    .line 213
    return-void
.end method
