.class Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;
.super Ljava/lang/Object;
.source "ImportFinishActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NegativeButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;->this$0:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;-><init>(Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;->this$0:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;->this$0:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 63
    return-void
.end method
