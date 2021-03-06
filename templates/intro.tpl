{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>How PGP works</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
        <h3>Introduction</h3>
<p>
The following text is taken from the document <a href="http://www.pgpi.org/doc/pgpintro/">Introduction to Cryptography in the PGP 6.5.1 documentation</a>. Copyright © 1990-1999 Network Associates, Inc. and its Affiliated Companies.
<br/><br/>
</p>
<h3>Table of Contents</h3>
<P>
 <UL>
<LI> <A HREF="#p1"> The Basics of Cryptography </A>
<LI> <A HREF="#p2"> Encryption and decryption </A>
<LI> <A HREF="#p3"> What is cryptography? </A>
 <UL>
<LI> <A HREF="#p4"> Strong cryptography </A>
<LI> <A HREF="#p5"> How does cryptography work? </A>
</UL>
<LI> <A HREF="#p6"> Conventional cryptography </A>
 <UL>
<LI> <A HREF="#p7"> Caesar's Cipher </A>
<LI> <A HREF="#p8"> Key management and conventional encryption </A>
</UL>
<LI> <A HREF="#p9"> Public key cryptography </A>
<LI> <A HREF="#p10"> How OpenPGP works </A>
<LI> <A HREF="#p11"> Keys </A>
<LI> <A HREF="#p12"> Digital signatures </A>
 <UL>
<LI> <A HREF="#p13"> Hash functions </A>
</UL>
<LI> <A HREF="#p14"> Digital certificates </A>
 <UL>
<LI> <A HREF="#p15"> Certificate distribution </A>
<LI> <A HREF="#p16"> Certificate formats </A>
</UL>
<LI> <A HREF="#p17"> Validity and trust </A>
 <UL>
<LI> <A HREF="#p18"> Checking validity </A>
<LI> <A HREF="#p19"> Establishing trust </A>
<LI> <A HREF="#p20"> Trust models </A>
</UL>
<LI> <A HREF="#p21"> Certificate Revocation </A>
 <UL>
<LI> <A HREF="#p22"> Communicating that a certificate has been revoked </A>
</UL>
<LI> <A HREF="#p23"> What is a passphrase? </A>
<LI> <A HREF="#p24"> Key splitting </A>
</UL>
<BR>
<h3 class="intro" id="p1">The Basics of Cryptography</h3>
<P>
When Julius Caesar sent messages to his generals, he didn't trust his
messengers. So he replaced every A in his messages with a D, every B with an
E, and so on through the alphabet. Only someone who knew the "shift by 3"
rule could decipher his messages.
<P>
And so we begin.
<P>
<h3 class="intro" id="p2">Encryption and decryption</h3>
Data that can be read and understood without any special measures is called
<I>plaintext </I>or <I>cleartext. </I>The method of disguising plaintext in such a way as to
hide its substance is called <I>encryption. </I>Encrypting plaintext results in
unreadable gibberish called <I>ciphertext. </I>You use encryption to ensure that
information is hidden from anyone for whom it is not intended, even those
who can see the encrypted data. The process of reverting ciphertext to its
original plaintext is called <I>decryption</I>. <I>Figure 1-1</I> illustrates this process.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-1.gif" />
<p class="description">Figure 1-1. Encryption and decryption</p>
<P>
<h3 class="intro" id="p3">What is cryptography?</h3>
<I>Cryptography </I>is the science of using mathematics to encrypt and decrypt data.
Cryptography enables you to store sensitive information or transmit it across
insecure networks (like the Internet) so that it cannot be read by anyone except
the intended recipient.
<P>
While cryptography is the science of securing data, <I>cryptanalysis </I>is the science
of analyzing and breaking secure communication. Classical cryptanalysis
involves an interesting combination of analytical reasoning, application of
mathematical tools, pattern finding, patience, determination, and luck.
Cryptanalysts are also called <I>attackers.
</I><P>
<I>Cryptology </I>embraces both cryptography and cryptanalysis.
<P>
<h3 class="intro" id="p4">Strong cryptography</h3>
<I>"There are two kinds of cryptography in this world: cryptography that will stop your
kid sister from reading your files, and cryptography that will stop major governments
from reading your files. This book is about the latter."
</I><P>
--Bruce Schneier, Applied Cryptography: Protocols, Algorithms, and Source
Code in C.<br><br>
<P>
OpenPGP is also about the latter sort of cryptography.
Cryptography can be <I>strong </I>or <I>weak, </I>as explained above. Cryptographic
strength is measured in the time and resources it would require to recover the
plaintext. The result of <I>strong cryptography </I>is ciphertext that is very difficult to
decipher without possession of the appropriate decoding tool. How difficult?
Given all of today's computing power and available time — even a billion
computers doing a billion checks a second — it is not possible to decipher the
result of strong cryptography before the end of the universe.
<P>
One would think, then, that strong cryptography would hold up rather well
against even an extremely determined cryptanalyst. Who's really to say? No
one has proven that the strongest encryption obtainable today will hold up
under tomorrow's computing power. However, the strong cryptography
employed by OpenPGP is the best available today. Vigilance and conservatism will
protect you better, however, than claims of impenetrability.
<P>
<h3 class="intro" id="p5">How does cryptography work?</h3>
A <I>cryptographic algorithm, </I>or cipher, is a mathematical function used in the
encryption and decryption process. A cryptographic algorithm works in
combination with a <I>key — </I>a word, number, or phrase — to encrypt the plaintext.
The same plaintext encrypts to different ciphertext with different keys. The
security of encrypted data is entirely dependent on two things: the strength of
the cryptographic algorithm and the secrecy of the key.
<P>
A cryptographic algorithm, plus all possible keys and all the protocols that
make it work comprise a <I>cryptosystem. </I>OpenPGP is a cryptosystem.
<P>
<h3 class="intro" id="p6">Conventional cryptography</h3>
In conventional cryptography, also called <I>secret-key </I>or <I>symmetric-key
</I>encryption, one key is used both for encryption and decryption. The Data
Encryption Standard (DES) is an example of a conventional cryptosystemthat
is widely employed by the Federal Government. <I>Figure 1-2</I> is an illustration of the conventional encryption process.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-2.gif" />
<p class="description">Figure 1-2. Conventional encryption </p>
<P>
<h3 class="intro" id="p7">Caesar's Cipher</h3>
An extremely simple example of conventional cryptography is a substitution
cipher. A substitution cipher substitutes one piece of information for another.
This is most frequently done by offsetting letters of the alphabet. Two examples
are Captain Midnight's Secret Decoder Ring, which you may have owned when
you were a kid, and Julius Caesar's cipher. In both cases, the algorithm is to
offset the alphabet and the key is the number of characters to offset it.
<P>
For example, if we encode the word "SECRET" using Caesar's key value of 3,
we offset the alphabet so that the 3rd letter down (D) begins the alphabet.
<P>
So starting with<P>
ABCDEFGHIJKLMNOPQRSTUVWXYZ<P>
and sliding everything up by 3, you get<P>
DEFGHIJKLMNOPQRSTUVWXYZABC<P>
where D=A, E=B, F=C, and so on.
<P>
Using this scheme, the plaintext, "SECRET" encrypts as "VHFUHW." To
allow someone else to read the ciphertext, you tell them that the key is 3.
<P>
Obviously, this is exceedingly weak cryptography by today's standards, but
hey, it worked for Caesar, and it illustrates how conventional cryptography
works.
<P>
<h3 class="intro" id="p8">Key management and conventional encryption</h3>
Conventional encryption has benefits. It is very fast. It is especially useful for
encrypting data that is not <I>going </I>anywhere. However, conventional
encryption alone as a means for transmitting secure data can be quite
expensive simply due to the difficulty of secure key distribution.
<P>
Recall a character from your favorite spy movie: the person with a locked
briefcase handcuffed to his or her wrist. What is in the briefcase, anyway? It's
probably not the missile launch code/ biotoxin formula/ invasion plan itself.
It's the <I>key </I>that will decrypt the secret data.
<P>
For a sender and recipient to communicate securely using conventional
encryption, they must agree upon a key and keep it secret between
themselves. If they are in different physical locations, they must trust a courier,
the Bat Phone, or some other secure communication medium to prevent the
disclosure of the secret key during transmission. Anyone who overhears or
intercepts the key in transit can later read, modify, and forge all information
encrypted or authenticated with that key. From DES to Captain Midnight's
Secret Decoder Ring, the persistent problem with conventional encryption is
<I>key distribution: </I>how do you get the key to the recipient without someone
intercepting it?
<P>
<h3 class="intro" id="p9">Public key cryptography</h3>
The problems of key distribution are solved by <I>public key cryptography, </I>the
concept of which was introduced by Whitfield Diffie and Martin Hellman in
1975. (There is now evidence that the British Secret Service invented it a few
years before Diffie and Hellman, but kept it a military secret — and did nothing
with it. [J H Ellis: The Possibility of Secure Non-Secret Digital Encryption, CESG Report, January 1970])
<P>
Public key cryptography is an asymmetric scheme that uses a <I>pair </I>of keys for
encryption: a <I>public key, </I>which encrypts data, and a corresponding <I>private, </I>or
<I>secret key </I>for decryption. You publish your public key to the world while
keeping your private key secret. Anyone with a copy of your public key can then
encrypt information that only you can read. Even people you have never met.
<P>
It is computationally infeasible to deduce the private key from the public key.
Anyone who has a public key can encrypt information but cannot decrypt it.
Only the person who has the corresponding private key can decrypt the
information.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-3.gif" />
<p class="description">Figure 1-3. Public key encryption</p>
<P>
The primary benefit of public key cryptography is that it allows people who
have no preexisting security arrangement to exchange messages securely. The
need for sender and receiver to share secret keys via some secure channel is
eliminated; all communications involve only public keys, and no private key
is ever transmitted or shared. Some examples of public-key cryptosystems are
Elgamal (named for its inventor, Taher Elgamal), RSA (named for its
inventors, Ron Rivest, Adi Shamir, and Leonard Adleman), Diffie-Hellman
(named, you guessed it, for its inventors), and DSA, the Digital Signature
Algorithm (invented by David Kravitz).
<P>
Because conventional cryptography was once the only available means for
relaying secret information, the expense of secure channels and key
distribution relegated its use only to those who could afford it, such as
governments and large banks (or small children with secret decoder rings).
Public key encryption is the technological revolution that provides strong
cryptography to the adult masses. Remember the courier with the locked
briefcase handcuffed to his wrist? Public-key encryption puts him out of
business (probably to his relief).
<P>
<h3 class="intro" id="p10">How OpenPGP works</h3>
OpenPGP combines some of the best features of both conventional and public key
cryptography. OpenPGP is a <I>hybrid cryptosystem.
</I>When a user encrypts plaintext with OpenPGP, OpenPGP first compresses the plaintext.
Data compression saves modem transmission time and disk space and, more
importantly, strengthens cryptographic security. Most cryptanalysis
techniques exploit patterns found in the plaintext to crack the cipher.
Compression reduces these patterns in the plaintext, thereby greatly
enhancing resistance to cryptanalysis. (Files that are too short to compress or
which don't compress well aren't compressed.)
<P>
OpenPGP then creates a <I>session key, </I>which is a one-time-only secret key. This key is
a random number generated from the random movements of your mouse and
the keystrokes you type. This session key works with a very secure, fast
conventional encryption algorithm to encrypt the plaintext; the result is
ciphertext. Once the data is encrypted, the session key is then encrypted to the
recipient's public key. This public key-encrypted session key is transmitted
along with the ciphertext to the recipient.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-4.gif" />
<p class="description">Figure 1-4. How OpenPGP encryption works</p>
<P>
Decryption works in the reverse. The recipient's copy of OpenPGP uses his or her
private key to recover the temporary session key, which OpenPGP then uses to
decrypt the conventionally-encrypted ciphertext.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-5.gif" />
<p class="description">Figure 1-5. How OpenPGP decryption works</p>
<P>
The combination of the two encryption methods combines the convenience of
public key encryption with the speed of conventional encryption.
Conventional encryption is about 1, 000 times faster than public key
encryption. Public key encryption in turn provides a solution to key
distribution and data transmission issues. Used together, performance and
key distribution are improved without any sacrifice in security.
<P>
<h3 class="intro" id="p11">Keys</h3>
A key is a value that works with a cryptographic algorithm to produce a
specific ciphertext. Keys are basically really, really, really big numbers. Key
size is measured in bits; the number representing a 1024-bit key is darn huge.
In public key cryptography, the bigger the key, the more secure the ciphertext.
<P>
However, public key size and conventional cryptography's secret key size are
totally unrelated. A conventional 80-bit key has the equivalent strength of a
1024-bit public key. A conventional 128-bit key is equivalent to a 3000-bit
public key. Again, the bigger the key, the more secure, but the algorithms used
for each type of cryptography are very different and thus comparison is like
that of apples to oranges.
<P>
While the public and private keys are mathematically related, it's very difficult
to derive the private key given only the public key; however, deriving the
private key is always possible given enough time and computing power. This
makes it very important to pick keys of the right size; large enough to be
secure, but small enough to be applied fairly quickly. Additionally, you need
to consider who might be trying to read your files, how determined they are,
how much time they have, and what their resources might be.
<P>
Larger keys will be cryptographically secure for a longer period of time. If
what you want to encrypt needs to be hidden for many years, you might want
to use a very large key. Of course, who knows how long it will take to
determine your key using tomorrow's faster, more efficient computers? There
was a time when a 56-bit symmetric key was considered extremely safe.
<P>
Keys are stored in encrypted form. OpenPGP stores the keys in two files on your
hard disk; one for public keys and one for private keys. These files are called
<I>keyrings. </I>As you use OpenPGP, you will typically add the public keys of your
recipients to your public keyring. Your private keys are stored on your private
keyring. If you lose your private keyring, you will be unable to decrypt any
information encrypted to keys on that ring.
<P>
<h3 class="intro" id="p12">Digital signatures</h3>
Amajor benefit of public key cryptography is that it provides a method for
employing <I>digital signatures. </I>Digital signatures enable the recipient of
information to verify the authenticity of the information's origin, and also
verify that the information is intact. Thus, public key digital signatures
provide <I>authentication </I>and data <I>integrity. </I>A digital signature also provides
<I>non-repudiation,</I> which means that it prevents the sender from claiming that he
or she did not actually send the information. These features are every bit as
fundamental to cryptography as privacy, if not more.
<P>
A digital signature serves the same purpose as a handwritten signature.
However, a handwritten signature is easy to counterfeit. A digital signature is
superior to a handwritten signature in that it is nearly impossible to
counterfeit, plus it attests to the contents of the information as well as to the
identity of the signer.
<P>
Some people tend to use signatures more than they use encryption. For
example, you may not care if anyone knows that you just deposited $1000 in
your account, but you do want to be darn sure it was the bank teller you were
dealing with.
<P>
The basic manner in which digital signatures are created is illustrated in <I>Figure 1-6</I>. Instead of encrypting information using someone else's public key, you encrypt it with your private key. If the information can be decrypted with your public key, then it must have originated with you.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-6.gif" />
<p class="description">Figure 1-6. Simple digital signatures</p>
<P>
<h3 class="intro" id="p13">Hash functions</h3>
The system described above has some problems. It is slow, and it produces an
enormous volume of data — at least double the size of the original information.
An improvement on the above scheme is the addition of a one-way <I>hash
function </I>in the process. A one-way hash function takes variable-length
input — in this case, a message of any length, even thousands or millions of
bits — and produces a fixed-length output; say, 160-bits. The hash function
ensures that, if the information is changed in any way — even by just one
bit — an entirely different output value is produced.
<P>
OpenPGP uses a cryptographically strong hash function on the plaintext the user is
signing. This generates a fixed-length data item known as a <I>message digest.
</I>(Again, any change to the information results in a totally different digest.)
<P>
Then OpenPGP uses the digest and the private key to create the "signature." OpenPGP
transmits the signature and the plaintext together. Upon receipt of the
message, the recipient uses OpenPGP to recompute the digest, thus verifying the
signature. OpenPGP can encrypt the plaintext or not; signing plaintext is useful if
some of the recipients are not interested in or capable of verifying the
signature.
<P>
As long as a secure hash function is used, there is no way to take someone's
signature from one document and attach it to another, or to alter a signed
message in any way. The slightest change in a signed document will cause the
digital signature verification process to fail.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-7.gif" />
<p class="description">Figure 1-7. Secure digital signatures</p>
<P>
Digital signatures play a major role in authenticating and <I>validating </I>other OpenPGP
users' keys.
<P>
<h3 class="intro" id="p14">Digital certificates</h3>
One issue with public key cryptosystems is that users must be constantly
vigilant to ensure that they are encrypting to the correct person's key. In an
environment where it is safe to freely exchange keys via public servers,
<I>man-in-the-middle </I>attacks are a potential threat. In this type of attack, someone
posts a phony key with the name and user ID of the user's intended recipient.
Data encrypted to — and intercepted by — the true owner of this bogus key is
now in the wrong hands.
<P>
In a public key environment, it is vital that you are assured that the public key
to which you are encrypting data is in fact the public key of the intended
recipient and not a forgery. You could simply encrypt only to those keys which
have been physically handed to you. But suppose you need to exchange
information with people you have never met; how can you tell that you have
the correct key?
<P>
<I>Digital certificates, </I>or <I>certs, </I>simplify the task of establishing whether a public
key truly belongs to the purported owner.
<P>
A certificate is a form of credential. Examples might be your driver's license,
your social security card, or your birth certificate. Each of these has some
information on it identifying you and some authorization stating that
someone else has confirmed your identity. Some certificates, such as your
passport, are important enough confirmation of your identity that you would
not want to lose them, lest someone use them to impersonate you.
<P>
A digital certificate is data that functions much like a physical certificate. A
digital certificate is information included with a person's public key that helps
others verify that a key is genuine or <I>valid. </I>Digital certificates are used to
thwart attempts to substitute one person's key for another.
<P>
A digital certificate consists of three things:
<UL>
  <LI>A public key.
  <LI>Certificate information. ("Identity" information about the user, such as
name, user ID, and so on.)
  <LI>One or more digital signatures.
</UL>
The purpose of the digital signature on a certificate is to state that the
certificate information has been attested to by some other person or entity. The
digital signature does not attest to the authenticity of the certificate as a whole;
it vouches only that the signed identity information goes along with, or <I>is
bound to, </I>the public key.
<P>
Thus, a certificate is basically a public key with one or two forms of ID
attached, plus a hearty stamp of approval from some other trusted individual.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-8.gif" />
<p class="description">Figure 1-8. Anatomy of a OpenPGP certificate</p>
<P>
<h3 class="intro" id="p15">Certificate distribution</h3>
Certificates are utilized when it's necessary to exchange public keys with
someone else. For small groups of people who wish to communicate securely,
it is easy to manually exchange diskettes or emails containing each owner's
public key. This is <I>manual public key distribution, </I>and it is practical only to a
certain point. Beyond that point, it is necessary to put systems into place that
can provide the necessary security, storage, and exchange mechanisms so
coworkers, business partners, or strangers could communicate if need be.
These can come in the form of storage-only repositories called <I>Certificate
Servers, </I>or more structured systems that provide additional key management
features and are called <I>Public Key Infrastructures (PKIs).</I>
<P>
<h4>Certificate servers</h4>
A <I>certificate server, </I>also called a cert <I>server </I>or a <I>key server, </I>is a database that
allows users to submit and retrieve digital certificates. A cert server usually
provides some administrative features that enable a company to maintain its
security policies — for example, allowing only those keys that meet certain
requirements to be stored.
<P>
<h4 id="PKI">Public Key Infrastructures</h4>
A PKI contains the certificate storage facilities of a certificate server, but also
provides certificate management facilities (the ability to issue, revoke, store,
retrieve, and trust certificates). The main feature of a PKI is the introduction of
what is known as a <I>Certification Authority, </I>orCA, which is a human entity — a
person, group, department, company, or other association — that an
organization has authorized to issue certificates to its computer users. (A CA's
role is analogous to a country's government's Passport Office.) A CA creates
certificates and digitally signs them using the CA's private key. Because of its
role in creating certificates, the CA is the central component of a PKI. Using the
CA's public key, anyone wanting to verify a certificate's authenticity verifies
the issuing CA's digital signature, and hence, the integrity of the contents of
the certificate (most importantly, the public key and the identity of the
certificate holder).
<P>
<h3 class="intro" id="p16">Certificate formats</h3>
A digital certificate is basically a collection of identifying information bound
together with a public key and signed by a trusted third party to prove its
authenticity. A digital certificate can be one of a number of different <I>formats.
</I><P>
OpenPGP recognizes two different certificate formats:
<UL>
  <LI>OpenPGP certificates
  <LI>X.509 certificates
</UL>
<P>
<h4>OpenPGP certificate format</h4>
A OpenPGP certificate includes (but is not limited to) the following information:
<UL>
  <LI><B>The OpenPGP version number — </B>this identifies which version of OpenPGP was used
to create the key associated with the certificate.
<P>
  <LI><B>The certificate holder's public key — </B>the public portion of your key pair,
together with the algorithm of the key: RSA, DH (Diffie-Hellman), or DSA
(Digital Signature Algorithm).
<P>
  <LI><B>The certificate holder's information — </B>this consists of "identity"
information about the user, such as his or her name, user ID, photograph,
and so on.
<P>
  <LI><B>The digital signature of the certificate owner — </B>also called a <I>self-signature,
</I>this is the signature using the corresponding private key of the public key
associated with the certificate.
<P>
  <LI><B>The certificate's validity period — </B>the certificate's start date/ time and
expiration date/ time; indicates when the certificate will expire.
<P>
  <LI><B>The preferred symmetric encryption algorithmfor the key — </B>indicates the
encryption algorithm to which the certificate owner prefers to have
information encrypted. The supported algorithms are CAST, IDEA or
Triple-DES.
</UL>
You might think of a OpenPGP certificate as a public key with one or more labels
tied to it (see <I>Figure 1-9</I>). On these 'labels' you'll find information identifying
the owner of the key and a signature of the key's owner, which states that the
key and the identification go together. (This particular signature is called a
<I>self-signature; </I>every OpenPGP certificate contains a self-signature.)
<P>
One unique aspect of the OpenPGP certificate format is that a single certificate can
contain multiple signatures. Several or many people may sign the
key/ identification pair to attest to their own assurance that the public key
definitely belongs to the specified owner. If you look on a public certificate
server, you may notice that certain certificates, such as that of OpenPGP's creator,
Phil Zimmermann, contain many signatures.
<P>
Some OpenPGP certificates consist of a public key with several labels, each of which
contains a different means of identifying the key's owner (for example, the
owner's name and corporate email account, the owner's nickname and home
email account, a photograph of the owner — all in one certificate). The list of
signatures of each of those identities may differ; signatures attest to the
authenticity that one of the labels belongs to the public key, not that all the
labels on the key are authentic. (Note that 'authentic' is in the eye of its
beholder — signatures are opinions, and different people devote different
levels of due diligence in checking authenticity before signing a key.)
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-9.gif" />
<p class="description">Figure 1-9. A OpenPGP certificate</p>
<P>
<h4>X.509 certificate format</h4>
<I>X.509</I> is another very common certificate format. All X.509 certificates comply
with the ITU-T X.509 international standard; thus (theoretically) X.509
certificates created for one application can be used by any application
complying with X.509. In practice, however, different companies have created
their own extensions to X.509 certificates, not all of which work together.
<P>
A certificate requires someone to validate that a public key and the name of the
key's owner go together. With OpenPGP certificates, anyone can play the role of
validator. With X.509 certificates, the validator is always a Certification
Authority or someone designated by a CA. (Bear in mind that OpenPGP certificates
also fully support a hierarchical structure using a <I>CA </I>to validate certificates.)
<P>
An X.509 certificate is a collection of a standard set of fields containing
information about a user or device and their corresponding public key. The
X.509 standard defines what information goes into the certificate, and
describes how to encode it (the data format). All X.509 certificates have the
following data:
<UL>
  <LI><B>The X.509 version number — </B>this identifies which version of the X.509
standard applies to this certificate, which affects what information can be
specified in it. The most current is version 3.
<P>
  <LI><B>The certificate holder's public key — </B>the public key of the certificate
holder, together with an algorithm identifier which specifies which
cryptosystem the key belongs to and any associated key parameters.
<P>
  <LI><B>The serial number of the certificate — </B>the entity (application or person)
that created the certificate is responsible for assigning it a unique serial
number to distinguish it from other certificates it issues. This information
is used in numerous ways; for example when a certificate is revoked, its
serial number is placed in a <I>Certificate Revocation List </I>or <I>CRL.
</I><P>
  <LI><B>The certificate holder's </B>  <B>unique identifier — </B>(or <I>DN — distinguished name).
</I>This name is intended to be unique across the Internet. This name is
intended to be unique across the Internet. A DN consists of multiple
subsections and may look something like this:
<P>
CN=Bob Allen, OU=Total Network Security Division, O=Network
Associates, Inc., C=US
<P>
(These refer to the subject's <I>Common Name, Organizational Unit, Organization,</I> and <I>Country</I>.)
<P>
  <LI><B>The certificate's validity period — </B>the certificate's start date/ time and
expiration date/ time; indicates when the certificate will expire.
<P>
  <LI><B>The unique name of the certificate issuer — </B>the unique name of the entity
that signed the certificate. This is normally a CA. Using the certificate
implies trusting the entity that signed this certificate. (Note that in some
cases, such as <I>root </I>or <I>top-level </I>CA certificates, the issuer signs its own
certificate.)
<P>
  <LI><B>The digital signature of the issuer — </B>the signature using the private key of
the entity that issued the certificate.
<P>
  <LI><B>The signature algorithm identifier — </B>identifies the algorithm used by the
CA to sign the certificate.
</UL>
There are many differences between an X.509 certificate and a OpenPGP certificate,
but the most salient are as follows:
<UL>
  <LI>you can create your own OpenPGP certificate; you must request and be issued
an X.509 certificate from a Certification Authority<P>
  <LI>X.509 certificates natively support only a single name for the key's owner<P>
  <LI>X.509 certificates support only a single digital signature to attest to the
key's validity
</UL>
To obtain an X.509 certificate, you must ask a CA to issue you a certificate. You
provide your public key, proof that you possess the corresponding private
key, and some specific information about yourself. You then digitally sign the
information and send the whole package — the certificate <I>request — </I>to the CA.
The CA then performs some due diligence in verifying that the information
you provided is correct, and if so, generates the certificate and returns it.
<P>
You might think of an X.509 certificate as looking like a standard paper
certificate (similar to one you might have received for completing a class in
basic First Aid) with a public key taped to it. It has your name and some
information about you on it, plus the signature of the person who issued it to
you.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-10.gif" />
<p class="description">Figure 1-10. An X.509 certificate</p>
<P>
Probably the most widely visible use of X.509 certificates today is in web browsers.
<P>
<h3 class="intro" id="p17">Validity and trust</h3>
Every user in a public key system is vulnerable to mistaking a phony key
(certificate) for a real one. <I>Validity </I>is confidence that a public key certificate
belongs to its purported owner. Validity is essential in a public key
environment where you must constantly establish whether or not a particular
certificate is authentic.
<P>
When you've assured yourself that a certificate belonging to someone else is
valid, you can sign the copy on your keyring to attest to the fact that you've
checked the certificate and that it's an authentic one. If you want others to
know that you gave the certificate your stamp of approval, you can export the
signature to a certificate server so that others can see it.
<P>
As described in the section <A href="#PKI">Public Key Infrastructures</A>,
some companies
designate one or more Certification Authorities (CAs) to indicate certificate
validity. In an organization using a PKI with X.509 certificates, it is the job of
the CA to <I>issue </I>certificates to users — a process which generally entails
responding to a user's request for a certificate. In an organization using OpenPGP
certificates without a PKI, it is the job of the CA to check the authenticity of all
OpenPGP certificates and then sign the good ones. Basically, the main purpose of a
CA is to bind a public key to the identification information contained in the
certificate and thus assure third parties that some measure of care was taken
to ensure that this binding of the identification information and key is valid.
<P>
The CA is the Grand Pooh-bah of validation in an organization; someone
whom everyone trusts, and in some organizations, like those using a PKI, no
certificate is considered valid unless it has been signed by a trusted CA.
<P>
<h3 class="intro" id="p18">Checking validity</h3>
One way to establish validity is to go through some manual process. There are
several ways to accomplish this. You could require your intended recipient to
physically hand you a copy of his or her public key. But this is often
inconvenient and inefficient.
<P>
Another way is to manually check the certificate's <I>fingerprint. </I>Just as every
human's fingerprints are unique, every OpenPGP certificate's fingerprint is unique.
The fingerprint is a hash of the user's certificate and appears as one of the
certificate's properties. In OpenPGP, the fingerprint can appear as a hexadecimal
number or a series of so-called <I>biometric words, </I>which are phonetically distinct
and are used to make the fingerprint identification process a little easier.
<P>
You can check that a certificate is valid by calling the key's owner (so that you
originate the transaction) and asking the owner to read his or her key's
fingerprint to you and verifying that fingerprint against the one you believe to
be the real one. This works if you know the owner's voice, but, how do you
manually verify the identity of someone you don't know? Some people put the
fingerprint of their key on their business cards for this very reason.
<P>
Another way to establish validity of someone's certificate is to <I>trust </I>that a third
individual has gone through the process of validating it.
<P>
A CA, for example, is responsible for ensuring that prior to issuing to a
certificate, he or she carefully checks it to be sure the public key portion really
belongs to the purported owner. Anyone who trusts the CA will automatically
consider any certificates signed by the CA to be valid.
<P>
Another aspect of checking validity is to ensure that the certificate has not been
revoked. For more information, see the section <A href="#p21">Certificate Revocation</A>.
<P>
<h3 class="intro" id="p19">Establishing trust</h3>
You validate <I>certificates. </I>You trust <I>people. </I>More specifically, you trust people to
validate other people' certificates. Typically, unless the owner hands you the
certificate, you have to go by someone else's word that it is valid.
<P>
<h4>Meta and trusted introducers</h4>
In most situations, people completely trust the CA to establish certificates'
validity. This means that everyone else relies upon the CA to go through the
whole manual validation process for them. This is fine up to a certain number
of users or number of work sites, and then it is not possible for the CA to
maintain the same level of quality validation. In that case, adding other
validators to the system is necessary.
<P>
A CA can also be a meta-<I>introducer. </I>A meta-introducer bestows not only
validity on keys, but bestows the <I>ability to trust keys </I>upon others. Similar to the
king who hands his seal to his trusted advisors so they can act on his authority,
the meta-introducer enables others to act as <I>trusted introducers. </I>These trusted
introducers can validate keys to the same effect as that of the meta-introducer.
They cannot, however, create new trusted introducers.
<P>
Meta-introducer and trusted introducer are OpenPGP terms. In an X.509
environment, the meta-introducer is called the <I>root Certification Authority </I>(root
<I>CA) </I>and trusted introducers <I>subordinate </I>Certification Authorities.
<P>
The root CA uses the private key associated with a special certificate type
called a <I>root CA certificate </I>to sign certificates. Any certificate signed by the root
CA certificate is viewed as valid by any other certificate signed by the root.
This validation process works even for certificates signed by other CAs in the
system — as long as the root CA certificate signed the subordinate CA's
certificate, any certificate signed by the CA is considered valid to others within
the hierarchy. This process of checking back up through the system to see who
signed whose certificate is called tracing a <I>certification path </I>or <I>certification chain.
</I><P>
<h3 class="intro" id="p20">Trust models</h3>
In relatively closed systems, such as within a small company, it is easy to trace
a certification path back to the root CA. However, users must often
communicate with people outside of their corporate environment, including
some whom they have never met, such as vendors, customers, clients,
associates, and so on. Establishing a line of trust to those who have not been
explicitly trusted by your CA is difficult.
<P>
Companies follow one or another <I>trust model, </I>which dictates how users will go
about establishing certificate validity. There are three different models:
<P>
<UL>
  <LI>Direct Trust
  <LI>Hierarchical Trust
  <LI>A Web of Trust
</UL>
<h4>Direct Trust</h4>
Direct trust is the simplest trust model. In this model, a user trusts that a key
is valid because he or she knows where it came from. All cryptosystems use
this form of trust in some way. For example, in web browsers, the root
Certification Authority keys are directly trusted because they were shipped by
the manufacturer. If there is any form of hierarchy, it extends from these
directly trusted certificates.
<P>
In OpenPGP, a user who validates keys herself and never sets another certificate to
be a trusted introducer is using direct trust.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-11.gif" />
<p class="description">Figure 1-11. Direct trust</p>
<P>
<h4>Hierarchical Trust</h4>
In a hierarchical system, there are a number of "root" certificates from which
trust extends. These certificates may certify certificates themselves, or they
may certify certificates that certify still other certificates down some chain.
Consider it as a big trust "tree." The "leaf" certificate's validity is verified by
tracing backward from its certifier, to other certifiers, until a directly trusted
root certificate is found.
<P>
<img class="intro" SRC="{$root}/images/pgp/fig1-12.gif" />
<p class="description">Figure 1-12. Hierarchical trust</p>
<P>

<h4>Web of Trust</h4>
A web of trust encompasses both of the other models, but also adds the notion
that trust is in the eye of the beholder (which is the real-world view) and the
idea that more information is better. It is thus a cumulative trust model. A
certificate might be trusted directly, or trusted in some chain going back to a
directly trusted root certificate (the meta-introducer), or by some group of
introducers.
<P>
Perhaps you've heard of the term <I>six degrees of separation, </I>which suggests that
any person in the world can determine some link to any other person in the
world using six or fewer other people as intermediaries. This is a web of
introducers.
<P>
It is also the OpenPGP view of trust. OpenPGP uses digital signatures as its form of
introduction. When any user signs another's key, he or she becomes an
introducer of that key. As this process goes on, it establishes a <I>web of trust.
</I><P>
In a OpenPGP environment, <I>any </I>user can act as a certifying authority. Any OpenPGP user
can validate another OpenPGP user's public key certificate. However, such a
certificate is only valid to another user if the relying party recognizes the
validator as a trusted introducer. (That is, you trust my opinion that others'
keys are valid only if you consider me to be a trusted introducer. Otherwise,
my opinion on other keys' validity is moot.)
<P>
Stored on each user's public keyring are indicators of
<UL>
  <LI>whether or not the user considers a particular key to be valid
  <LI>the level of trust the user places on the key that the key's owner can serve
as certifier of others' keys
</UL>
You indicate, on your copy of my key, whether you think my judgement
counts. It's really a reputation system: certain people are reputed to give good
signatures, and people trust them to attest to other keys' validity.
<P>
<h4>Levels of trust in OpenPGP</h4>
The highest level of trust in a key, <I>implicit </I>trust, is trust in your own key pair.
OpenPGP assumes that if you own the private key, you must trust the actions of its
related public key. Any keys signed by your implicitly trusted key are valid.
<P>
There are three levels of trust you can assign to someone else's public key:
<UL>
  <LI><I>Complete </I>trust
  <LI><I>Marginal </I>trust
  <LI>No trust (or Untrusted)
</UL>
To make things confusing, there are also three levels of validity:
<UL>
  <LI>Valid
  <LI>Marginally valid
  <LI>Invalid
</UL>
To define another's key as a trusted introducer, you
<OL>
  <LI>Start with a valid key, one that is either
  <UL>
    <LI>signed by you or
    <LI>signed by another trusted introducer
  </UL>
  and then
<LI>Set the level of trust you feel the key's owner is entitled.
</OL>
<P>
For example, suppose your key ring contains Alice's key. You have validated
Alice's key and you indicate this by signing it. You know that Alice is a real
stickler for validating others' keys. You therefore assign her key with
Complete trust. This makes Alice a Certification Authority. If Alice signs
another's key, it appears as Valid on your keyring.
<P>
OpenPGP requires one Completely trusted signature or two Marginally trusted
signatures to establish a key as valid. OpenPGP's method of considering two
Marginals equal to one Complete is similar to a merchant asking for two forms
of ID. You might consider Alice fairly trustworthy and also consider Bob fairly
trustworthy. Either one alone runs the risk of accidentally signing a counterfeit
key, so you might not place complete trust in either one. However, the odds
that both individuals signed the same phony key are probably small.
<P>
<h3 class="intro" id="p21">Certificate Revocation</h3>
Certificates are only useful while they are valid. It is unsafe to simply assume
that a certificate is valid forever. In most organizations and in all PKIs,
certificates have a restricted lifetime. This constrains the period in which a
system is vulnerable should a certificate compromise occur.
<P>
Certificates are thus created with a scheduled <I>validity period: </I>a start date/time
and an expiration date/ time. The certificate is expected to be usable for its
entire validity period (its <I>lifetime</I>). When the certificate expires, it will no
longer be valid, as the authenticity of its key/ identification pair are no longer
assured. (The certificate can still be safely used to reconfirm information that
was encrypted or signed within the validity period — it should not be trusted
for cryptographic tasks moving forward, however.)
<P>
There are also situations where it is necessary to invalidate a certificate prior
to its expiration date, such as when an the certificate holder terminates
employment with the company or suspects that the certificate's corresponding
private key has been compromised. This is called <I>revocation. </I>A revoked
certificate is <I>much </I>more suspect than an expired certificate. Expired certificates
are unusable, but do not carry the same threat of compromise as a revoked
certificate.
<P>
Anyone who has signed a certificate can revoke his or her signature on the
certificate (provided he or she uses the same private key that created the
signature). A revoked signature indicates that the signer no longer believes the
public key and identification information belong together, or that the
certificate's public key (or corresponding private key) has been compromised.
A revoked signature should carry nearly as much weight as a revoked
certificate.
<P>
With X.509 certificates, a revoked signature is practically the same as a
revoked certificate given that the only signature on the certificate is the one
that made it valid in the first place — the signature of the CA. OpenPGP certificates
provide the added feature that you can revoke your entire certificate (not just
the signatures on it) if you yourself feel that the certificate has been
compromised.
<P>
Only the certificate's owner (the holder of its corresponding private key) or
someone whom the certificate's owner has <I>designated </I>as a revoker can revoke
a OpenPGP certificate. (Designating a revoker is a useful practice, as it's often the
loss of the passphrase for the certificate's corresponding private key that leads
a OpenPGP user to revoke his or her certificate — a task that is only possible if one
has access to the private key.) Only the certificate's issuer can revoke an X.509
certificate.
<P>
<h3 class="intro" id="p22">Communicating that a certificate has been revoked</h3>
When a certificate is revoked, it is important to make potential users of the
certificate aware that it is no longer valid. With OpenPGP certificates, the most
common way to communicate that a certificate has been revoked is to post it
on a certificate server so others who may wish to communicate with you are
warned not to use that public key.
<P>
In a PKI environment, communication of revoked certificates is most
commonly achieved via a data structure called a <I>Certificate Revocation List, </I>or
<I>CRL, </I>which is published by the CA. The CRL contains a time-stamped,
validated list of all revoked, unexpired certificates in the system. Revoked
certificates remain on the list only until they expire, then they are removed
from the list — this keeps the list from getting too long.
<P>
The CA distributes the CRL to users at some regularly scheduled interval (and
potentially off-cycle, whenever a certificate is revoked). Theoretically, this will
prevent users from unwittingly using a compromised certificate. It is possible,
though, that there may be a time period between CRLs in which a newly
compromised certificate is used.
<P>
<h3 class="intro" id="p23">What is a passphrase?</h3>
Most people are familiar with restricting access to computer systems via a
<I>password, </I>which is a unique string of characters that a user types in as an
identification code.
<P>
A <I>passphrase </I>is a longer version of a password, and in theory, a more secure
one. Typically composed of multiple words, a passphrase is more secure
against standard <I>dictionary attacks, </I>wherein the attacker tries all the words in
the dictionary in an attempt to determine your password. The best
passphrases are relatively long and complex and contain a combination of
upper and lowercase letters, numeric and punctuation characters.
<P>
OpenPGP uses a passphrase to encrypt your private key on your machine. Your
private key is encrypted on your disk using a hash of your passphrase as the
secret key. You use the passphrase to decrypt and use your private key. A
passphrase should be hard for you to forget and difficult for others to guess. It
should be something already firmly embedded in your long-term memory,
rather than something you make up from scratch. Why? Because <B>if you forget your passphrase, you are out of luck.</B> Your private key is totally and
absolutely useless without your passphrase and nothing can be done about it.
Remember the quote earlier in this chapter? OpenPGP is cryptography that will
keep major governments out of your files. It will certainly keep you out of your
files, too. Keep that in mind when you decide to change your passphrase to the
punchline of that joke you can never quite remember.
<P>
<h3 class="intro" id="p24">Key splitting</h3>
They say that a secret is not a secret if it is known to more than one person.
Sharing a private key pair poses such a problem. While it is not a
recommended practice, sharing a private key pair is necessary at times.
<I>Corporate Signing Keys, </I>for example, are private keys used by a company to
sign — for example — legal documents, sensitive personnel information, or
press releases to authenticate their origin. In such a case, it is worthwhile for
multiple members of the company to have access to the private key. However,
this means that any single individual can act fully on behalf of the company.
<P>
In such a case it is wise to split the key among multiple people in such a way
that more than one or two people must present a piece of the key in order to
reconstitute it to a usable condition. If too few pieces of the key are available,
then the key is unusable.
<P>
Some examples are to split a key into three pieces and require two of them to
reconstitute the key, or split it into two pieces and require both pieces. If a
secure network connection is used during the reconstitution process, the key's
shareholders need not be physically present in order to rejoin the key.
<p>
        </div>
{/block}
