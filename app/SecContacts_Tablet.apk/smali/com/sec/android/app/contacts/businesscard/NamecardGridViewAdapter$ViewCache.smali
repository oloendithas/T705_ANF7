.class public Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;
.super Ljava/lang/Object;
.source "NamecardGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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

.field mPushState:Landroid/view/View;

.field mQuickContactEnabled:Z

.field mTextArea:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quickContactEnabled"    # Z

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mContext:Landroid/content/Context;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mQuickContactEnabled:Z

    .line 143
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mContext:Landroid/content/Context;

    .line 144
    iput-boolean p2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mQuickContactEnabled:Z

    .line 145
    return-void
.end method
