RSpec.describe PersianNumbers do
  describe '.translate_to_words' do
    context 'Testing GHA failed build scenario' do
      it { expect(true).to eq(false) }
    end

    context 'with invalid input' do
      it {
        expect { described_class.translate_to_words('INVALID') }
          .to raise_error(Conversion::InvalidNumberError)
      }
    end

    context 'with 1 digit' do
      it { expect(described_class.translate_to_words(9)).to eq('نه') }
      it { expect(described_class.translate_to_words('9')).to eq('نه') }
      it { expect(described_class.translate_to_words('۹')).to eq('نه') }

      it { expect(described_class.translate_to_words('09')).to eq('نه') }
    end

    context 'with 2 digits' do
      it { expect(described_class.translate_to_words(35)).to eq('سی و پنج') }
      it { expect(described_class.translate_to_words('35')).to eq('سی و پنج') }
      it { expect(described_class.translate_to_words('۳۵')).to eq('سی و پنج') }

      it { expect(described_class.translate_to_words('0035')).to eq('سی و پنج') }
    end

    context 'with 3 digits' do
      it { expect(described_class.translate_to_words(456)).to eq('چهارصد و پنجاه و شش') }
      it { expect(described_class.translate_to_words('456')).to eq('چهارصد و پنجاه و شش') }
      it { expect(described_class.translate_to_words('۴۵۶')).to eq('چهارصد و پنجاه و شش') }

      it { expect(described_class.translate_to_words(400)).to eq('چهارصد') }
      it { expect(described_class.translate_to_words(410)).to eq('چهارصد و ده') }
      it { expect(described_class.translate_to_words(417)).to eq('چهارصد و هفده') }
    end

    context 'with 4 digits' do
      it { expect(described_class.translate_to_words(7812)).to eq('هفت هزار و هشتصد و دوازده') }
      it { expect(described_class.translate_to_words('7812')).to eq('هفت هزار و هشتصد و دوازده') }
      it { expect(described_class.translate_to_words('۷۸۱۲')).to eq('هفت هزار و هشتصد و دوازده') }

      it { expect(described_class.translate_to_words(7012)).to eq('هفت هزار و دوازده') }
      it { expect(described_class.translate_to_words(7802)).to eq('هفت هزار و هشتصد و دو') }
      it { expect(described_class.translate_to_words(7000)).to eq('هفت هزار') }
      it { expect(described_class.translate_to_words(7004)).to eq('هفت هزار و چهار') }
      it { expect(described_class.translate_to_words(7031)).to eq('هفت هزار و سی و یک') }
      it { expect(described_class.translate_to_words(7630)).to eq('هفت هزار و ششصد و سی') }
    end

    context 'with 5 digits' do
      it { expect(described_class.translate_to_words(12_345)).to eq('دوازده هزار و سیصد و چهل و پنج') }
      it { expect(described_class.translate_to_words('12345')).to eq('دوازده هزار و سیصد و چهل و پنج') }
      it { expect(described_class.translate_to_words('۱۲۳۴۵')).to eq('دوازده هزار و سیصد و چهل و پنج') }

      it { expect(described_class.translate_to_words(12_045)).to eq('دوازده هزار و چهل و پنج') }
      it { expect(described_class.translate_to_words(22_315)).to eq('بیست و دو هزار و سیصد و پانزده') }
      it { expect(described_class.translate_to_words(40_315)).to eq('چهل هزار و سیصد و پانزده') }
      it { expect(described_class.translate_to_words(41_307)).to eq('چهل و یک هزار و سیصد و هفت') }
      it { expect(described_class.translate_to_words(40_300)).to eq('چهل هزار و سیصد') }
    end

    context 'with 6 digits' do
      it { expect(described_class.translate_to_words(421_035)).to eq('چهارصد و بیست و یک هزار و سی و پنج') }
      it { expect(described_class.translate_to_words('421035')).to eq('چهارصد و بیست و یک هزار و سی و پنج') }
      it { expect(described_class.translate_to_words('۴۲۱۰۳۵')).to eq('چهارصد و بیست و یک هزار و سی و پنج') }

      it { expect(described_class.translate_to_words(420_035)).to eq('چهارصد و بیست هزار و سی و پنج') }
      it { expect(described_class.translate_to_words(420_005)).to eq('چهارصد و بیست هزار و پنج') }
      it { expect(described_class.translate_to_words(420_105)).to eq('چهارصد و بیست هزار و صد و پنج') }
      it { expect(described_class.translate_to_words(420_115)).to eq('چهارصد و بیست هزار و صد و پانزده') }
      it { expect(described_class.translate_to_words(420_015)).to eq('چهارصد و بیست هزار و پانزده') }
      it { expect(described_class.translate_to_words(400_005)).to eq('چهارصد هزار و پنج') }
    end

    context 'with 7 digits' do
      it { expect(described_class.translate_to_words(5_619_231)).to eq('پنج میلیون و ششصد و نوزده هزار و دویست و سی و یک') }
      it { expect(described_class.translate_to_words('5619231')).to eq('پنج میلیون و ششصد و نوزده هزار و دویست و سی و یک') }
      it { expect(described_class.translate_to_words(5_000_001)).to eq('پنج میلیون و یک') }
      it { expect(described_class.translate_to_words(5_000_011)).to eq('پنج میلیون و یازده') }
      it { expect(described_class.translate_to_words(5_040_011)).to eq('پنج میلیون و چهل هزار و یازده') }
      it { expect(described_class.translate_to_words(5_040_712)).to eq('پنج میلیون و چهل هزار و هفتصد و دوازده') }
      it { expect(described_class.translate_to_words(5_600_712)).to eq('پنج میلیون و ششصد هزار و هفتصد و دوازده') }
      it { expect(described_class.translate_to_words(5_605_712)).to eq('پنج میلیون و ششصد و پنج هزار و هفتصد و دوازده') }
      it { expect(described_class.translate_to_words(5_609_031)).to eq('پنج میلیون و ششصد و نه هزار و سی و یک') }
      it { expect(described_class.translate_to_words(5_609_013)).to eq('پنج میلیون و ششصد و نه هزار و سیزده') }
      it { expect(described_class.translate_to_words(5_019_201)).to eq('پنج میلیون و نوزده هزار و دویست و یک') }
    end

    context 'with 9 digits' do
      it {
        expect(described_class.translate_to_words(312_897_456))
          .to eq('سیصد و دوازده میلیون و هشتصد و نود و هفت هزار و چهارصد و پنجاه و شش')
      }
      it {
        expect(described_class.translate_to_words('312897456'))
          .to eq('سیصد و دوازده میلیون و هشتصد و نود و هفت هزار و چهارصد و پنجاه و شش')
      }
    end

    context 'with 11 digits' do
      it {
        expect(described_class.translate_to_words(45_312_897_456))
          .to eq('چهل و پنج میلیارد و سیصد و دوازده میلیون و هشتصد و نود و هفت هزار و چهارصد و پنجاه و شش')
      }
      it {
        expect(described_class.translate_to_words('45312897456'))
          .to eq('چهل و پنج میلیارد و سیصد و دوازده میلیون و هشتصد و نود و هفت هزار و چهارصد و پنجاه و شش')
      }
    end

    context 'with leading zero' do
      it { expect(described_class.translate_to_words(0o0456)).not_to eq('چهارصد و پنجاه و شش') }
      it { expect(described_class.translate_to_words('00456')).to eq('چهارصد و پنجاه و شش') }
      it { expect(described_class.translate_to_words('00000456')).to eq('چهارصد و پنجاه و شش') }
      it { expect(described_class.translate_to_words('00000450')).to eq('چهارصد و پنجاه') }
    end

    context 'with comma' do
      it {
        expect(described_class.translate_to_words('45,312,897,456'))
          .to eq('چهل و پنج میلیارد و سیصد و دوازده میلیون و هشتصد و نود و هفت هزار و چهارصد و پنجاه و شش')
      }
    end
  end
end
