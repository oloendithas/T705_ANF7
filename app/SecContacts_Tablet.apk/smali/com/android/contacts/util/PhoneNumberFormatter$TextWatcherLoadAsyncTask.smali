.class Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/PhoneNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextWatcherLoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCountryCode:Ljava/lang/String;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    .line 44
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 48
    new-instance v0, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    iget-object v1, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sget-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    if-eqz v0, :cond_2

    # getter for: Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/contacts/util/PhoneNumberFormatter;->access$000()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/contacts/util/PhoneNumberFormatter;->access$000()Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v0, :cond_2

    .line 58
    # getter for: Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/contacts/util/PhoneNumberFormatter;->access$000()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/util/PhoneNumberFormatter;->prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    sput-object p1, Lcom/android/contacts/util/PhoneNumberFormatter;->prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    .line 63
    iget-object v0, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    # setter for: Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/util/PhoneNumberFormatter;->access$002(Landroid/widget/TextView;)Landroid/widget/TextView;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->onPostExecute(Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;)V

    return-void
.end method
