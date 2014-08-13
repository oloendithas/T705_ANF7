.class Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTypeSelectedListener"
.end annotation


# static fields
.field public static final IMPORT_ALL:I = 0x2

.field public static final IMPORT_MULTIPLE:I = 0x1

.field public static final IMPORT_ONE:I = 0x0

.field public static final IMPORT_TYPE_SIZE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p2, "x1"    # Lcom/android/contacts/vcard/ImportVCardActivity$1;

    .prologue
    .line 1181
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1197
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mCurrentIndex:I
    invoke-static {v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/vcard/ImportVCardActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1215
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1231
    :goto_0
    return-void

    .line 1203
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$800(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)V

    goto :goto_0

    .line 1209
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1221
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mCurrentIndex:I
    invoke-static {v0, p2}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$602(Lcom/android/contacts/vcard/ImportVCardActivity;I)I

    goto :goto_0

    .line 1199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
