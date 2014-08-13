.class final Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;
.super Ljava/lang/Object;
.source "JoinedContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedContactItemCache"
.end annotation


# instance fields
.field public accountView:Landroid/widget/TextView;

.field public mJoinedContactItem:Landroid/widget/LinearLayout;

.field public minusButtonFrame:Landroid/widget/FrameLayout;

.field public minusButtonView:Landroid/widget/ImageView;

.field public nameView:Landroid/widget/TextView;

.field public photoView:Landroid/widget/ImageView;

.field public profileIntent:Landroid/content/Intent;

.field public targetRawContactId:J

.field final synthetic this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
